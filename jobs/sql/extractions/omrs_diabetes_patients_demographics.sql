CREATE temporary table temp_diabetes_patients_demographics (
  patient_id int,
  Medical_Record_Number varchar(50),
  Patient_Names varchar(152),
  Age bigint,
  Gender varchar(50),
  country varchar(50),
  state_province varchar(255),
  district varchar(255),
  sector varchar(255),
  cell varchar(255),
  umudugudu varchar(255),
  health_facility varchar(255),
  Patient_status varchar(5),
  Enrolment_Date datetime,
  Completed_Date datetime,
  Diabetes_treatment_status varchar(255),
  Monitoring_status varchar(255),
  Home_glucometer_study varchar(255)  
);

# Populate the "rows" of this table to contain all diabetes patients 
insert into temp_diabetes_patients_demographics(patient_id,Medical_Record_Number,Patient_Names,
    Age,Gender,country,state_province,district,sector,cell,umudugudu,health_facility,
    Patient_status,Diabetes_treatment_status,Monitoring_status,Home_glucometer_study)
    
SELECT
-- pp.patient_program_id,
p.patient_id,
pi.identifier as Medical_Record_Number,
concat(COALESCE(pn.given_name,'')," ",COALESCE(pn.middle_name,'')," ",COALESCE(pn.family_name,'')) as 'Patient Names',
floor(DATEDIFF(NOW(),ps.birthdate)/365.25) as Age,
ps.gender as Gender,
country, state_province, county_district as district, city_village as sector, address3 as cell, address1 as umudugudu,
location.name as health_facility,
CASE
WHEN ps.dead = 0 THEN 'ALIVE'
WHEN ps.dead = 1 THEN 'DEAD'
ELSE 'NULL'
END AS 'Patient status',
diagnosis1 as 'Diabetes treatment status',
diagnosis2 as 'Monitoring status',
diagnosis3 as 'Home glucometer study'

from patient p
LEFT JOIN patient_program pp on p.patient_id = pp.patient_id
LEFT JOIN program pr on pp.program_id = pr.program_id
LEFT JOIN person ps on p.patient_id = ps.person_id
LEFT JOIN person_name pn on ps.person_id = pn.person_id
LEFT JOIN patient_identifier pi on p.patient_id = pi.patient_id
LEFT JOIN (SELECT * from person_address where voided=0 group by person_id) address on address.person_id=p.patient_id
LEFT JOIN (SELECT person_id, name from person_attribute
LEFT JOIN location on location.location_id=person_attribute.value
where voided=0 and person_attribute_type_id=7
group by person_id
) location on location.person_id=p.patient_id
LEFT JOIN (SELECT patient_id, patient_state.start_date, concept_name.name diagnosis1, patient_program.outcome_concept_id
from patient_program
LEFT JOIN patient_state on patient_state.patient_program_id=patient_program.patient_program_id
LEFT JOIN program_workflow_state on program_workflow_state.program_workflow_state_id=patient_state.state
LEFT JOIN program_workflow pw on program_workflow_state.program_workflow_id = pw.program_workflow_id
LEFT JOIN program pro on pw.program_id = pro.program_id
LEFT JOIN (SELECT * from concept_name where locale="en") concept_name on concept_name.concept_id=program_workflow_state.concept_id
WHERE pw.concept_id = 6750
and pro.name = 'Diabetes Program'
and patient_state.voided=0
and patient_state.end_date is null
group by patient_id
) diagnosis1 on diagnosis1.patient_id=p.patient_id
LEFT JOIN (SELECT patient_id, patient_state.start_date, concept_name.name diagnosis2, patient_program.outcome_concept_id
from patient_program
LEFT JOIN patient_state on patient_state.patient_program_id=patient_program.patient_program_id
LEFT JOIN program_workflow_state on program_workflow_state.program_workflow_state_id=patient_state.state
LEFT JOIN program_workflow pw on program_workflow_state.program_workflow_id = pw.program_workflow_id
LEFT JOIN program pro on pw.program_id = pro.program_id
LEFT JOIN (SELECT * from concept_name where locale="en") concept_name on concept_name.concept_id=program_workflow_state.concept_id
WHERE pw.concept_id = 6751
and pro.name = 'Diabetes Program'
and patient_state.voided=0
and patient_state.end_date is null
group by patient_id
) diagnosis2 on diagnosis2.patient_id=p.patient_id
LEFT JOIN (SELECT patient_id, patient_state.start_date, concept_name.name diagnosis3, patient_program.outcome_concept_id
from patient_program
LEFT JOIN patient_state on patient_state.patient_program_id=patient_program.patient_program_id
LEFT JOIN program_workflow_state on program_workflow_state.program_workflow_state_id=patient_state.state
LEFT JOIN program_workflow pw on program_workflow_state.program_workflow_id = pw.program_workflow_id
LEFT JOIN program pro on pw.program_id = pro.program_id
LEFT JOIN (SELECT * from concept_name where locale="en") concept_name on concept_name.concept_id=program_workflow_state.concept_id
WHERE pw.concept_id = 122582
and pro.name = 'Diabetes Program'
and patient_state.voided=0
and patient_state.end_date is null
group by patient_id
) diagnosis3 on diagnosis3.patient_id=p.patient_id
LEFT JOIN patient_state pState on pp.patient_program_id = pState.patient_program_id
LEFT JOIN program_workflow_state pws on pState.state = pws.program_workflow_state_id
LEFT JOIN concept_name cn on pws.concept_id = cn.concept_id

WHERE  pr.name="Diabetes Program"
GROUP BY p.patient_id;

# To optimize performance, first reduce the size of the patient program being queried to those non-voided in these patients
DROP TEMPORARY TABLE IF EXISTS temp_patient_program;
create temporary table temp_patient_program
select patient_program_id,pp.patient_id,program_id,date_enrolled,date_completed,creator,date_created,
changed_by,date_changed,voided,voided_by,date_voided,uuid,location_id    
from patient_program pp
         inner join temp_diabetes_patients_demographics t on pp.patient_id = t.patient_id
where pp.voided = 0 and pp.program_id= (select program_id from program where name="Diabetes Program")
;

# Add indexes on these for further query performance
create index temp_patient_program_oi on temp_patient_program(patient_id);
create index temp_patient_program_ci1 on temp_patient_program(patient_program_id, program_id);


update temp_diabetes_patients_demographics tdpd
 set 
    tdpd.Enrolment_Date =
    (
        SELECT 
            date_enrolled 
        from 
            patient_program ppro 
        where
            ppro.patient_id = tdpd.patient_id 
            and ppro.program_id=(select program_id from program where name="Diabetes Program")
        order by ppro.date_enrolled asc limit 1
    ) 
 ;

 update temp_diabetes_patients_demographics tdpd
 set 
    tdpd.Completed_Date =
    (
        SELECT 
            date_completed 
        from 
            patient_program ppro
        where
            ppro.patient_id = tdpd.patient_id
            and ppro.program_id=(select program_id from program where name="Diabetes Program")
        order by ppro.date_completed limit 1
    ) 
 ;



select * from temp_diabetes_patients_demographics;