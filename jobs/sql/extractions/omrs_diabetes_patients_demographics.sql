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
pp.date_enrolled as 'Enrolment Date',
pp.date_completed as 'Completed Date',
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
LEFT JOIN (SELECT patient_id, patient_state.start_date, name diagnosis1, patient_program.outcome_concept_id
from patient_program
LEFT JOIN patient_state on patient_state.patient_program_id=patient_program.patient_program_id
LEFT JOIN program_workflow_state on program_workflow_state.program_workflow_state_id=patient_state.state
LEFT JOIN program_workflow pw on program_workflow_state.program_workflow_id = pw.program_workflow_id
LEFT JOIN (SELECT * from concept_name where locale="en") concept_name on concept_name.concept_id=program_workflow_state.concept_id
WHERE pw.program_workflow_id=28
and patient_state.voided=0
and patient_state.end_date is null
group by patient_id
) diagnosis1 on diagnosis1.patient_id=p.patient_id
LEFT JOIN (SELECT patient_id, patient_state.start_date, name diagnosis2, patient_program.outcome_concept_id
from patient_program
LEFT JOIN patient_state on patient_state.patient_program_id=patient_program.patient_program_id
LEFT JOIN program_workflow_state on program_workflow_state.program_workflow_state_id=patient_state.state
LEFT JOIN program_workflow pw on program_workflow_state.program_workflow_id = pw.program_workflow_id
LEFT JOIN (SELECT * from concept_name where locale="en") concept_name on concept_name.concept_id=program_workflow_state.concept_id
WHERE pw.program_workflow_id=27
and patient_state.voided=0
and patient_state.end_date is null
group by patient_id
) diagnosis2 on diagnosis2.patient_id=p.patient_id
LEFT JOIN (SELECT patient_id, patient_state.start_date, name diagnosis3, patient_program.outcome_concept_id
from patient_program
LEFT JOIN patient_state on patient_state.patient_program_id=patient_program.patient_program_id
LEFT JOIN program_workflow_state on program_workflow_state.program_workflow_state_id=patient_state.state
LEFT JOIN (SELECT * from concept_name where locale="en") concept_name on concept_name.concept_id=program_workflow_state.concept_id
WHERE program_workflow_id=73
and patient_state.voided=0
and patient_state.end_date is null
group by patient_id
) diagnosis3 on diagnosis3.patient_id=p.patient_id
LEFT JOIN patient_state pState on pp.patient_program_id = pState.patient_program_id
LEFT JOIN program_workflow_state pws on pState.state = pws.program_workflow_state_id
LEFT JOIN concept_name cn on pws.concept_id = cn.concept_id

WHERE  pr.program_id = 12
GROUP BY p.patient_id;