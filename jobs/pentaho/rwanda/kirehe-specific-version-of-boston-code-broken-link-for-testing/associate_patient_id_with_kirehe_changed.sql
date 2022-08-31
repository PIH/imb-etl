update omrs_encounter
set encounter.patient_id = (SELECT patient_id from omrs_patient where omrs_patient.uuid=encounter.patient_uuid)
;

update omrs_obs
set orms_obs.patient_id = (SELECT patient_id from omrs_patient where omrs_patient.uuid=orms_obs.patient_uuid)
;

update omrs_obs_group
set omrs_obs_group.patient_id = (SELECT patient_id from omrs_patient where omrs_patient.uuid=omrs_obs_group.patient_uuid)
;

update omrs_patient_identifier
set omrs_patient_identifier.patient_id = (SELECT patient_id from omrs_patient where omrs_patient.uuid=omrs_patient_identifier.patient_uuid)
;

update omrs_program_enrollment
set omrs_program_enrollment.patient_id = (SELECT patient_id from omrs_patient where omrs_patient.uuid=omrs_program_enrollment.patient_uuid)
;

update omrs_program_state
set omrs_program_state.patient_id = (SELECT patient_id from omrs_patient where omrs_patient.uuid=omrs_program_state.patient_uuid)
;

update omrs_relationship
set omrs_relationship.patient_id = (SELECT patient_id from omrs_patient where omrs_patient.uuid=omrs_relationship.patient_uuid)
;

update rw_order
set rw_order.patient_id= (SELECT patient_id from omrs_patient where omrs_patient.uuid=rw_patient.patient_uuid)
;