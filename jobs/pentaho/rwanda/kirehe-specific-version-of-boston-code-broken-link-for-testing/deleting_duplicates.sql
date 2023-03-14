
#Model code
/*DELETE XXXX from XXXX
INNER JOIN (SELECT *, 
	RANK() OVER (PARTITION BY YYYYYY_id #the main ID or uuid of that table
		order by date_updated
	) ranking
    from XXXX
) XXXX_versions
where ranking>1
;*/

#Delete from patient - the fundamental one
DELETE omrs_patient from omrs_patient
INNER JOIN (SELECT *, 
	RANK() OVER (PARTITION BY patient_id #the main ID or uuid of that table
		order by date_updated
	) ranking
    from omrs_patient
) omrs_patient_versions on omrs_patient_versions.patient_id=omrs_patient.patient_id
where ranking>1
;

DELETE omrs_encounter from omrs_encounter
INNER JOIN (SELECT *, 
	RANK() OVER (PARTITION BY encounter_id #the main ID or uuid of that table
		order by date_updated
	) ranking
    from omrs_encounter
) encounter_versions on encounter_versions.encounter_id=omrs_encounter.encounter_id
where ranking>1
;

DELETE omrs_obs from omrs_obs
INNER JOIN (SELECT *, 
	RANK() OVER (PARTITION BY obs_id #the main ID or uuid of that table
		order by date_created
	) ranking
    from omrs_obs
) obs_versions on obs_versions.encounter_id=omrs_obs.obs_id
where ranking>1
;

DELETE omrs_obs_group from omrs_obs_group
INNER JOIN (SELECT *, 
	RANK() OVER (PARTITION BY obs_group_id #the main ID or uuid of that table
		order by date_created
	) ranking
    from omrs_obs_group
) obs_group_versions on obs_group_versions.encounter_id=omrs_obs_group.obs_id
where ranking>1
;

DELETE omrs_patient_identifier from omrs_patient_identifier
INNER JOIN (SELECT *, 
	RANK() OVER (PARTITION BY patient_identifier_id #the main ID or uuid of that table
		order by date_created
	) ranking
    from omrs_patient_identifier
) omrs_patient_identifier_versions on omrs_patient_identifier_versions.patient_identifier_id=omrs_patient_identifier.patient_identifier_id
where ranking>1
;

DELETE omrs_program_enrollment from omrs_program_enrollment
INNER JOIN (SELECT *, 
	RANK() OVER (PARTITION BY program_enrollment_id #the main ID or uuid of that table
		order by date_updated
	) ranking
    from omrs_program_enrollment
) omrs_program_enrollment_versions on omrs_program_enrollment_versions.program_enrollment_id=omrs_program_enrollment_versions.program_enrollment_id
where ranking>1
;

DELETE omrs_program_state from omrs_program_state
INNER JOIN (SELECT *, 
	RANK() OVER (PARTITION BY program_state_id #the main ID or uuid of that table
		order by date_updated
	) ranking
    from omrs_program_state
) omrs_program_state_versions on omrs_program_state_versions.program_state_id=omrs_program_state.program_state_id
where ranking>1
;

DELETE omrs_relationship from omrs_relationship
INNER JOIN (SELECT *, 
	RANK() OVER (PARTITION BY relationship_id #the main ID or uuid of that table
		order by date_updated
	) ranking
    from omrs_relationship
) omrs_program_state_versions on omrs_program_state_versions.program_state_id=omrs_program_state.program_state_id
where ranking>1
;

DELETE omrs_visit from omrs_visit
INNER JOIN (SELECT *, 
	RANK() OVER (PARTITION BY visit_id #the main ID or uuid of that table
		order by date_created
	) ranking
    from omrs_visit
) omrs_visit_versions on omrs_visit_versions.visit_id=omrs_visit.visit_id
where ranking>1
;

-- Todd or Ben should look into this code
DELETE rw_order from rw_order
INNER JOIN (SELECT *,
	RANK() OVER (PARTITION BY order_id #the main ID or uuid of that table
		order by date_created
	) ranking
    from rw_order
) order_versions on order_versions.start_date=rw_order.start_date
where ranking>1
;
