CREATE temporary table temp_pdc_patients_demographics (
  Patient_UUID varchar(50),
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
  phone_number varchar(50),
  religion varchar(50),
  profession varchar(50),
  Patient_status varchar(5),
  Enrolment_Date datetime,
  Completed_Date datetime
);

# Populate the "rows" of this table to contain all pdc patients
insert into temp_pdc_patients_demographics(Patient_UUID,patient_id,Medical_Record_Number,Patient_Names,
    Age,Gender,country,state_province,district,sector,cell,umudugudu,health_facility,
    phone_number,religion,profession,Patient_status)

SELECT
ps.uuid as Patient_UUID,
p.patient_id,
pi.identifier as Medical_Record_Number,
concat(COALESCE(pn.given_name,'')," ",COALESCE(pn.middle_name,'')," ",COALESCE(pn.family_name,'')) as 'Patient Names',
floor(DATEDIFF(NOW(),ps.birthdate)/365.25) as Age,
ps.gender as Gender,
country, state_province, county_district as district, city_village as sector, address3 as cell, address1 as umudugudu,
location.name as health_facility,
phone.phone_number,
religion.religion,
profession.profession,

CASE
WHEN ps.dead = 0 THEN 'ALIVE'
WHEN ps.dead = 1 THEN 'DEAD'
ELSE 'NULL'
END AS 'Patient status'



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

LEFT JOIN (select person_id, value as phone_number from person_attribute
where person_attribute_type_id in
(select person_attribute_type_id from person_attribute_type where name like "%phone%")
and voided=0
group by person_id
) phone on phone.person_id = p.patient_id

LEFT JOIN (select person_id, value as religion from person_attribute
where person_attribute_type_id in
(select person_attribute_type_id from person_attribute_type where name like "%religion%")
and voided=0
group by person_id
) religion on religion.person_id = p.patient_id

LEFT JOIN (select person_id, value as profession from person_attribute
where person_attribute_type_id in
(select person_attribute_type_id from person_attribute_type where name like "%profession%")
and voided=0
group by person_id
) profession on profession.person_id = p.patient_id

JOIN (SELECT patient_id, min(date_enrolled) as first_enrollment, date_completed, patient_program_id , outcome_concept_id
from patient_program ppro
inner JOIN program prog on ppro.program_id = prog.program_id
where prog.name = 'PDC Program'
and ppro.voided=0
group by patient_id
) patient_program on patient_program.patient_id=p.patient_id

LEFT JOIN patient_state pState on pp.patient_program_id = pState.patient_program_id
LEFT JOIN program_workflow_state pws on pState.state = pws.program_workflow_state_id
LEFT JOIN concept_name cn on pws.concept_id = cn.concept_id

WHERE  pr.name = 'PDC Program'
and pp.voided = 0
and pr.retired = 0
GROUP BY p.patient_id;


# To optimize performance, first reduce the size of the patient program being queried to those non-voided in these patients
DROP TEMPORARY TABLE IF EXISTS temp_patient_program;
create temporary table temp_patient_program
select patient_program_id,pp.patient_id,program_id,date_enrolled,date_completed,creator,date_created,
changed_by,date_changed,voided,voided_by,date_voided,uuid,location_id
from patient_program pp
         inner join temp_pdc_patients_demographics t on pp.patient_id = t.patient_id
where pp.voided = 0 and pp.program_id= (select program_id from program where name="PDC Program")
;

# Add indexes on these for further query performance
create index temp_patient_program_oi on temp_patient_program(patient_id);
create index temp_patient_program_ci1 on temp_patient_program(patient_program_id, program_id);


update temp_pdc_patients_demographics tdpd
 set
    tdpd.Enrolment_Date =
    (
        SELECT
            date_enrolled
        from
            patient_program ppro
        where
            ppro.patient_id = tdpd.patient_id
            and ppro.program_id=(select program_id from program where name="PDC Program")
        order by ppro.date_enrolled asc limit 1
    )
 ;

 update temp_pdc_patients_demographics tdpd
 set
    tdpd.Completed_Date =
    (
        SELECT
            date_completed
        from
            patient_program ppro
        where
            ppro.patient_id = tdpd.patient_id
            and ppro.program_id=(select program_id from program where name="PDC Program")
        order by ppro.date_completed limit 1
    )
 ;



select * from temp_pdc_patients_demographics;