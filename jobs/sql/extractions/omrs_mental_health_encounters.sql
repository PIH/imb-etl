# First create a temporary table to hold the data to export
create temporary table temp_mental_health_encounters ( 
    PATIENT_ID int,
    PATIENT_UUID text,
    ENCOUNTER_ID int,
    ENCOUNTER_UUID text,
    FORM text,
    ENCOUNTER_DATE date,
    Head_of_family text,
    PATIENT_STATUS text,
    Data_entry_Complete text,
    Visit_status text,
    Secondary_diagnosis text,
    Primary_Diagnosis text,
    RWANDA_INSURANCE_TYPE text,
    RETURN_VISIT_DATE date,
    DATE_OF_LAST_RENDEZ_VOUS date,
    Mental_Health_inpatient_departure_Reason text,
    Admission_Date date,
    Other_secondary_diagnosis text,
    Other_primary_diagnosis text,
    CELL_PHONE text,
    OTHER_INSURANCE_TYPE_NON_CODED text,
    Mental_Health_Diagnosis_Stopping_Reason text,
    Clinican_notes text,
    other_Mood text,
    Affect text,
    Is_the_patient_being_internally_referred text,
    Appearance text,
    Speech text,
    mental_orientation text,
    Mood text,
    has_old_symptoms text,
    Insight text,
    Any_Extrapyramidal_Symptoms text,
    Patient_given_medication_for_EPSExtrapyramidal_Symptoms text,
    Thought_Content text,
    thought_process text,
    overall_improvement_of_symptoms text,
    Has_new_signs text,
    Patient_tolerating_medication text,
    Mental_Health_Diagnosis text,
    is_this_a_primary_diagnosis text,
    New_Symptom text,
    Additional_Observations text,
    Old_Symptom text,
    Reason_for_discharge_text text,
    Aggression text,
    PM_plus_Therapy text,
    Religion text,
    Current_medical_diagnosis text,
    Family_History_of_Mental_Illness text,
    who_when_and_how_did_it_start text,
    NUMBER_OF_PEOPLE_WHO_LIVE_IN_HOUSE_INCLUDING_PATIENT float,
    History_of_traumatic_brain_injury text,
    Marital_Status text,
    MAIN_ACTIVITY text,
    substances_used text,
    Mania text,
    family_member_with_psychotropic_medication_history text,
    DEPRESSION text,
    Mutuelle_level text,
    past_psychiatric_diagnoses text,
    PSYCHOSIS text,
    plan_to_referral text,
    Living_situation text,
    Is_the_patient_being_discharged_from_Mental_Health_clinic text,
    Functional_Impairments text,
    How_many_parents_do_you_have_living float,
    Family_History_of_Prior_suicide_attempts text,
    past_psychiatric_medications_approximate_dates_of_treatment text,
    Duration_of_Precipitating_events_symptom text,
    NO_ALLERGIES text,
    Duration_of_Aggression_sign text,
    Is_the_patient_currently_suicidal text,
    How_many_family_members_have_died_young float,
    Prior_Psychiatric_Hospitalizations text,
    History_of_Suicide_Attempts text,
    SYSTOLIC_BLOOD_PRESSURE float,
    DIASTOLIC_BLOOD_PRESSURE float,
    PULSE float,
    Reasons_for_Referral_non_coded text,
    other_referred_to text,
    WEIGHT_KG float,
    Depression_symptoms_duration text,
    Other_number_of_session text,
    why_the_patient_in_PM_plus_Psychotherapy_intervention text,
    Does_the_patient_in_PM_plus_Psychotherapy_intervention text,
    Does_the_patient_understand_structure_and_goals_of_PM_plus text,
    does_patient_commit_to_attending_the_remaining_four_sessions text,
    Type_of_Therapy text,
    number_of_session text,
    Was_confidentiality_and_rapport_established_with_patient text,
    ways_I_can_cope_with_these_feelings text,
    some_practical_community_supports_I_can_contact text,
    ways_to_ensure_that_I_am_safe text,
    warning_signs_to_look_out_for text,
    SERUM_GLUTAMIC_PYRUVIC_TRANSAMINASE float,
    ASAT_RESULT text,
    WHITE_BLOOD_CELLS float,
    Other_tests_or_procedures_Results text,
    SERUM_CREATININE float,
    Other_new_Symptoms text,
    RESPIRATORY_RATE float,
    action_performed text,
    Return_Visit_Location text,
    Frequency_of_illicit_drugs_use text,
    when_they_started_using_substance text,
    last_time_taken text,
    last_time_taken_non_coded text,
    Precipitating_events text,
    Details_of_the_traumatic_braiin_injury_history text,
    SEIZURE text,
    ACCOMPAGNATEUR_PHONE_NUMBER text,
    Duration_of_seizure_symptoms text,
    Next_visit_location_non_coded text,
    Mental_Health_exit_reasons text,
    Emergency_contact_person text,
    Emergency_contact_phone_number text,
    Somatic_complaints text,
    Duration_of_psychosis_symptoms text,
    Mania_symptom_duration text,
    TRANSFERRED_TO text,
    Other_exit_reason text,
    other_thought_process text,
    other_somatic_complaints_symptoms text,
    duration_of_somatic_complaints_symptoms text,
    TELEPHONE_NUMBER text,
    Cognitive_disability text,
    Duration_of_Cognitive_disability_symptoms text,
    reason_of_unemployment text,
    Alcohol_withdrawal_symptoms text,
    other_substances_used text,
    Longest_sober_period text,
    Quantity text,
    Attempts text,
    Other_reason_for_missing_visit text,
    Result_of_Call text,
    REASON_OF_CALLING_PATIENT text,
    Type_of_Attempt text,
    Reason_for_missed_visit text,
    explain_the_family_member_suicide_attempts text,
    MAIN_ACTIVITY_NON_CODED text,
    other_seizure_symptoms text,
    other_referrals_planned text,
    Extrapyramidal_Symptoms text,
    PM_plus_skills_challenges text,
    Is_patient_willing_to_practice_using_PM_plus_skill_this_week text,
    Specific_skills_discussed_during_the_visit text,
    Were_potential_hurdles_discussed text,
    patient_understand_skill_concept_discussed_during_this_session text,
    other_speech_description text,
    other_kind_of_appearance text,
    other_thought_content text,
    Other_functional_Impairments text,
    Other_Extrapyramidal_Symptoms text,
    other_Aggression_signs text,
    Frequency text,
    List_of_Psychotrophic_medication_used_by_family_member text,
    other_affect text,
    other_living_situation text,
    Other_Precipitating_events_symptom text,
    ANXIETY_DISORDER text,
    Anxiety_Symptom_Duration text,
    PTSD text,
    other_PTSD_symptom text,
    PTSD_symptom_duration text,
    Other_clinical_diagnosis_non_coded text,
    Other_Alcohol_withdrawal_symptoms text,
    Other_depression_symptoms text,
    other_psychosis_symptoms text,
    Other_return_visit_location text,
    other_Cognitive_disability_symptoms text,
    Was_the_patient_able_to_perform_exercise_appropriately text,
    Is_the_patient_able_to_apply_PM_plus_skills_and_techniques text,
    Did_the_patient_understand_benefits_of_deep_breathing text,
    Facility text,
    Other_Therapy text,
    Personality_disorder_symptom_duration text,
    Personality_Disorder text,
    Other_medical_diagnose text,
    PHQ_9_score_numeric float,
    Other_result_of_call text,
    Other_PM_plus_skills_challenges text,
    ALLERGY text,
    Action_taken text,
    other_reasons_why_the_patient_in_PM_plus_intervention text,
    Other_Mania_symptoms text,
    Date_of_Death date,
    OTHER_facility text,
    PM_plus_Session_additional_Notes text,
    Other_Personality_Disorders text,
    Allergic_reaction_non_coded text,
    Reason_for_Declining_Care text,
    other_anxiety_symptom text,
    people_I_can_contact_during_times_of_distress text,
    Suicide_Risk_Factors text,
    explain_the_suicidal_plan text,
    has_patient_been_referred text,
    Other_Suicide_Risk_Factors text,
    Does_the_patient_have_the_MEANS_to_execute_the_suicidal_plan text,
    a_patient_has_a_suicidal_plan text,
    What_is_the_plan_of_action_for_safety_of_this_patient text,
    has_the_patient_been_given_a_Suicide_Safety_Plan text,
    why_the_patient_wasn_t_given_a_suicide_safety_plan text,
    Other_tests_or_procedures text,
    RESULT_OF_HIV_TEST text,
    SERUM_ALBUMIN float,
    what_is_the_plan_for_management text,
    referred_to_coded text,
    Is_the_CHW_notified_about_this_patient text,
    Suicide_protective_factors text,
    Risk_classification text,
    Other_practical_community_supports_I_can_contact text,
    Other_warning_signs_to_look_out_for text,
    CAUSE_OF_DEATH text,
    other_ways_to_ensure_that_I_am_safe text,
    Church_Leader text,
    Other_ways_I_can_cope_with_these_feelings text,
    Electroencephalogram text,
    Date_of_group_of_tests date,
    RED_BLOOD_CELLS float,
    LYMPHOCYTES float,
    HEMOGLOBIN float,
    NEUTROPHILS float,
    MONOCYTES float,
    EOSINOPHILS float,
    PLATELETS float,
    HEMATOCRIT float,
    MEAN_CORPUSCULAR_HEMOGLOBIN float,
    RED_CELL_DISTRIBUTION_WIDTH float,
    BASOPHILS float,
    MEAN_CORPUSCULAR_VOLUME float,
    MEAN_CELL_HEMOGLOBIN_CONCENTRATION float,
    ALKALINE_PHOSPHATASE float,
    TOTAL_BILIRUBIN float,
    SERUM_SODIUM float,
    SERUM_CHLORIDE float,
    SERUM_CALCIUM float,
    BLOOD_UREA_NITROGEN float,
    SERUM_GLUCOSE float,
    SERUM_POTASSIUM_mEq_L float,
    SERUM_CARBON_DIOXIDE float,
    Head_CT_MRI_non_coded text,
    Other_Suicide_protective_factor text,
    other_reason_why_the_patient_wasn_t_given_a_suicide_safety_plan text,
    CHW text,
    Village_or_local_Leader text


);

# Populate the "rows" of this table to contain all mental health encounters

insert into temp_mental_health_encounters (patient_id,patient_uuid , encounter_id,encounter_uuid,FORM,ENCOUNTER_DATE)
select enc.patient_id,p.uuid, enc.encounter_id,enc.uuid,f.name,enc.encounter_datetime
from encounter enc
inner join person p on p.person_id=enc.patient_id
inner join form f on f.form_id=enc.form_id
-- inner join patient_program pp on pp.patient_id=enc.patient_id
where f.name in 
	(
        "MH PHQ-9 Score","MH Exit form", "MH missed visit form", "MH Routine encounter - Psychotherapy approach visit",
        "MH Suicide Risk Assessment", "MH suicide safety plan", "MH Investigations", "MH Initial Encounter", "MH Routine encounter -  Pharmacotherapy",
        "MH Medication List", "MH Diagnosis", "MH DIAGNOSES,MEDICATIONS,INVESTIGATIONS flowsheet", "MH access Basic information form",
        "MH access Outpatient visit", "MH access Inpatient admission"
	)
    and enc.voided=0
    and f.retired=0
    and p.voided=0
;

# To optimize performance, first reduce the size of the observations being queried to those non_voided in these encounters
DROP TEMPORARY TABLE IF EXISTS temp_obs;
create temporary table temp_obs
select o.obs_id, o.obs_group_id, o.encounter_id, o.person_id, o.concept_id, o.value_coded, o.value_numeric,
       o.value_text, o.value_datetime, o.value_coded_name_id, o.comments, o.date_created, o.value_drug, o.obs_datetime
from obs o
         inner join temp_mental_health_encounters t on t.encounter_id = o.encounter_id
where o.voided = 0
;


# Add indexes on these for further query performance
create index temp_obs_oi on temp_obs(obs_id);
create index temp_obs_ci1 on temp_obs(encounter_id, concept_id);
create index temp_obs_ci2 on temp_obs(obs_group_id, concept_id);

update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Head_of_family = o.value_text where o.concept_id = @Head_of_family;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PATIENT_STATUS = concept_name(o.value_coded, 'en') where o.concept_id = @PATIENT_STATUS;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Data_entry_Complete = concept_name(o.value_coded, 'en') where o.concept_id = @Data_entry_Complete;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Visit_status = concept_name(o.value_coded, 'en') where o.concept_id = @Visit_status;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Secondary_diagnosis = concept_name(o.value_coded, 'en') where o.concept_id = @Secondary_diagnosis;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Primary_Diagnosis = concept_name(o.value_coded, 'en') where o.concept_id = @Primary_Diagnosis;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RWANDA_INSURANCE_TYPE = concept_name(o.value_coded, 'en') where o.concept_id = @RWANDA_INSURANCE_TYPE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RETURN_VISIT_DATE = o.value_datetime where o.concept_id = @RETURN_VISIT_DATE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DATE_OF_LAST_RENDEZ_VOUS = o.value_datetime where o.concept_id = @DATE_OF_LAST_RENDEZ_VOUS;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mental_Health_inpatient_departure_Reason = concept_name(o.value_coded, 'en') where o.concept_id = @Mental_Health_inpatient_departure_Reason;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Admission_Date = o.value_datetime where o.concept_id = @Admission_Date;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_secondary_diagnosis = o.value_text where o.concept_id = @Other_secondary_diagnosis;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_primary_diagnosis = o.value_text where o.concept_id = @Other_primary_diagnosis;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CELL_PHONE = o.value_text where o.concept_id = @CELL_PHONE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_INSURANCE_TYPE_NON_CODED = o.value_text where o.concept_id = @OTHER_INSURANCE_TYPE_NON_CODED;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mental_Health_Diagnosis_Stopping_Reason = o.value_text where o.concept_id = @Mental_Health_Diagnosis_Stopping_Reason;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Clinican_notes = o.value_text where o.concept_id = @Clinican_notes;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_Mood = o.value_text where o.concept_id = @other_Mood;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Affect = concept_name(o.value_coded, 'en') where o.concept_id = @Affect;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Is_the_patient_being_internally_referred = concept_name(o.value_coded, 'en') where o.concept_id = @Is_the_patient_being_internally_referred;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Appearance = concept_name(o.value_coded, 'en') where o.concept_id = @Appearance;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Speech = concept_name(o.value_coded, 'en') where o.concept_id = @Speech;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.mental_orientation = concept_name(o.value_coded, 'en') where o.concept_id = @mental_orientation;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mood = concept_name(o.value_coded, 'en') where o.concept_id = @Mood;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.has_old_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @has_old_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Insight = concept_name(o.value_coded, 'en') where o.concept_id = @Insight;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Any_Extrapyramidal_Symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Any_Extrapyramidal_Symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_given_medication_for_EPSExtrapyramidal_Symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_given_medication_for_EPSExtrapyramidal_Symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Thought_Content = concept_name(o.value_coded, 'en') where o.concept_id = @Thought_Content;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.thought_process = concept_name(o.value_coded, 'en') where o.concept_id = @thought_process;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.overall_improvement_of_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @overall_improvement_of_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Has_new_signs = concept_name(o.value_coded, 'en') where o.concept_id = @Has_new_signs;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_tolerating_medication = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_tolerating_medication;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mental_Health_Diagnosis = concept_name(o.value_coded, 'en') where o.concept_id = @Mental_Health_Diagnosis;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.is_this_a_primary_diagnosis = concept_name(o.value_coded, 'en') where o.concept_id = @is_this_a_primary_diagnosis;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.New_Symptom = concept_name(o.value_coded, 'en') where o.concept_id = @New_Symptom;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Additional_Observations = o.value_text where o.concept_id = @Additional_Observations;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Old_Symptom = concept_name(o.value_coded, 'en') where o.concept_id = @Old_Symptom;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reason_for_discharge_text = o.value_text where o.concept_id = @Reason_for_discharge_text;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Aggression = concept_name(o.value_coded, 'en') where o.concept_id = @Aggression;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PM_plus_Therapy = concept_name(o.value_coded, 'en') where o.concept_id = @PM_plus_Therapy;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Religion = o.value_text where o.concept_id = @Religion;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Current_medical_diagnosis = concept_name(o.value_coded, 'en') where o.concept_id = @Current_medical_diagnosis;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_History_of_Mental_Illness = concept_name(o.value_coded, 'en') where o.concept_id = @Family_History_of_Mental_Illness;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.who_when_and_how_did_it_start = o.value_text where o.concept_id = @who_when_and_how_did_it_start;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NUMBER_OF_PEOPLE_WHO_LIVE_IN_HOUSE_INCLUDING_PATIENT = o.value_numeric where o.concept_id = @NUMBER_OF_PEOPLE_WHO_LIVE_IN_HOUSE_INCLUDING_PATIENT;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.History_of_traumatic_brain_injury = concept_name(o.value_coded, 'en') where o.concept_id = @History_of_traumatic_brain_injury;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Marital_Status = concept_name(o.value_coded, 'en') where o.concept_id = @Marital_Status;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MAIN_ACTIVITY = concept_name(o.value_coded, 'en') where o.concept_id = @MAIN_ACTIVITY;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.substances_used = concept_name(o.value_coded, 'en') where o.concept_id = @substances_used;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mania = concept_name(o.value_coded, 'en') where o.concept_id = @Mania;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.family_member_with_psychotropic_medication_history = concept_name(o.value_coded, 'en') where o.concept_id = @family_member_with_psychotropic_medication_history;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DEPRESSION = concept_name(o.value_coded, 'en') where o.concept_id = @DEPRESSION;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mutuelle_level = concept_name(o.value_coded, 'en') where o.concept_id = @Mutuelle_level;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.past_psychiatric_diagnoses = o.value_text where o.concept_id = @past_psychiatric_diagnoses;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PSYCHOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @PSYCHOSIS;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.plan_to_referral = concept_name(o.value_coded, 'en') where o.concept_id = @plan_to_referral;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Living_situation = concept_name(o.value_coded, 'en') where o.concept_id = @Living_situation;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Is_the_patient_being_discharged_from_Mental_Health_clinic = concept_name(o.value_coded, 'en') where o.concept_id = @Is_the_patient_being_discharged_from_Mental_Health_clinic;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Functional_Impairments = concept_name(o.value_coded, 'en') where o.concept_id = @Functional_Impairments;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.How_many_parents_do_you_have_living = o.value_numeric where o.concept_id = @How_many_parents_do_you_have_living;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_History_of_Prior_suicide_attempts = concept_name(o.value_coded, 'en') where o.concept_id = @Family_History_of_Prior_suicide_attempts;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.past_psychiatric_medications_approximate_dates_of_treatment = o.value_text where o.concept_id = @past_psychiatric_medications_approximate_dates_of_treatment;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Duration_of_Precipitating_events_symptom = concept_name(o.value_coded, 'en') where o.concept_id = @Duration_of_Precipitating_events_symptom;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NO_ALLERGIES = concept_name(o.value_coded, 'en') where o.concept_id = @NO_ALLERGIES;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Duration_of_Aggression_sign = concept_name(o.value_coded, 'en') where o.concept_id = @Duration_of_Aggression_sign;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Is_the_patient_currently_suicidal = concept_name(o.value_coded, 'en') where o.concept_id = @Is_the_patient_currently_suicidal;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.How_many_family_members_have_died_young = o.value_numeric where o.concept_id = @How_many_family_members_have_died_young;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Prior_Psychiatric_Hospitalizations = concept_name(o.value_coded, 'en') where o.concept_id = @Prior_Psychiatric_Hospitalizations;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.History_of_Suicide_Attempts = concept_name(o.value_coded, 'en') where o.concept_id = @History_of_Suicide_Attempts;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SYSTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @SYSTOLIC_BLOOD_PRESSURE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DIASTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @DIASTOLIC_BLOOD_PRESSURE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PULSE = o.value_numeric where o.concept_id = @PULSE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reasons_for_Referral_non_coded = o.value_text where o.concept_id = @Reasons_for_Referral_non_coded;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_referred_to = o.value_text where o.concept_id = @other_referred_to;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WEIGHT_KG = o.value_numeric where o.concept_id = @WEIGHT_KG;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Depression_symptoms_duration = concept_name(o.value_coded, 'en') where o.concept_id = @Depression_symptoms_duration;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_number_of_session = o.value_text where o.concept_id = @Other_number_of_session;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.why_the_patient_in_PM_plus_Psychotherapy_intervention = concept_name(o.value_coded, 'en') where o.concept_id = @why_the_patient_in_PM_plus_Psychotherapy_intervention;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Does_the_patient_in_PM_plus_Psychotherapy_intervention = concept_name(o.value_coded, 'en') where o.concept_id = @Does_the_patient_in_PM_plus_Psychotherapy_intervention;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Does_the_patient_understand_structure_and_goals_of_PM_plus = concept_name(o.value_coded, 'en') where o.concept_id = @Does_the_patient_understand_structure_and_goals_of_PM_plus;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.does_patient_commit_to_attending_the_remaining_four_sessions = concept_name(o.value_coded, 'en') where o.concept_id = @does_patient_commit_to_attending_the_remaining_four_sessions;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Type_of_Therapy = concept_name(o.value_coded, 'en') where o.concept_id = @Type_of_Therapy;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.number_of_session = concept_name(o.value_coded, 'en') where o.concept_id = @number_of_session;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Was_confidentiality_and_rapport_established_with_patient = concept_name(o.value_coded, 'en') where o.concept_id = @Was_confidentiality_and_rapport_established_with_patient;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ways_I_can_cope_with_these_feelings = concept_name(o.value_coded, 'en') where o.concept_id = @ways_I_can_cope_with_these_feelings;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.some_practical_community_supports_I_can_contact = concept_name(o.value_coded, 'en') where o.concept_id = @some_practical_community_supports_I_can_contact;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ways_to_ensure_that_I_am_safe = concept_name(o.value_coded, 'en') where o.concept_id = @ways_to_ensure_that_I_am_safe;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.warning_signs_to_look_out_for = concept_name(o.value_coded, 'en') where o.concept_id = @warning_signs_to_look_out_for;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_GLUTAMIC_PYRUVIC_TRANSAMINASE = o.value_numeric where o.concept_id = @SERUM_GLUTAMIC_PYRUVIC_TRANSAMINASE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ASAT_RESULT = o.value_text where o.concept_id = @ASAT_RESULT;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WHITE_BLOOD_CELLS = o.value_numeric where o.concept_id = @WHITE_BLOOD_CELLS;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_tests_or_procedures_Results = o.value_text where o.concept_id = @Other_tests_or_procedures_Results;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CREATININE = o.value_numeric where o.concept_id = @SERUM_CREATININE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_new_Symptoms = o.value_text where o.concept_id = @Other_new_Symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESPIRATORY_RATE = o.value_numeric where o.concept_id = @RESPIRATORY_RATE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.action_performed = o.value_text where o.concept_id = @action_performed;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Return_Visit_Location = concept_name(o.value_coded, 'en') where o.concept_id = @Return_Visit_Location;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Frequency_of_illicit_drugs_use = concept_name(o.value_coded, 'en') where o.concept_id = @Frequency_of_illicit_drugs_use;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.when_they_started_using_substance = concept_name(o.value_coded, 'en') where o.concept_id = @when_they_started_using_substance;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.last_time_taken = concept_name(o.value_coded, 'en') where o.concept_id = @last_time_taken;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.last_time_taken_non_coded = o.value_text where o.concept_id = @last_time_taken_non_coded;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Precipitating_events = concept_name(o.value_coded, 'en') where o.concept_id = @Precipitating_events;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Details_of_the_traumatic_braiin_injury_history = o.value_text where o.concept_id = @Details_of_the_traumatic_braiin_injury_history;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SEIZURE = concept_name(o.value_coded, 'en') where o.concept_id = @SEIZURE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ACCOMPAGNATEUR_PHONE_NUMBER = o.value_text where o.concept_id = @ACCOMPAGNATEUR_PHONE_NUMBER;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Duration_of_seizure_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Duration_of_seizure_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Next_visit_location_non_coded = o.value_text where o.concept_id = @Next_visit_location_non_coded;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mental_Health_exit_reasons = concept_name(o.value_coded, 'en') where o.concept_id = @Mental_Health_exit_reasons;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Emergency_contact_person = o.value_text where o.concept_id = @Emergency_contact_person;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Emergency_contact_phone_number = o.value_text where o.concept_id = @Emergency_contact_phone_number;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Somatic_complaints = concept_name(o.value_coded, 'en') where o.concept_id = @Somatic_complaints;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Duration_of_psychosis_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Duration_of_psychosis_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mania_symptom_duration = concept_name(o.value_coded, 'en') where o.concept_id = @Mania_symptom_duration;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TRANSFERRED_TO = o.value_text where o.concept_id = @TRANSFERRED_TO;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_exit_reason = o.value_text where o.concept_id = @Other_exit_reason;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_thought_process = o.value_text where o.concept_id = @other_thought_process;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_somatic_complaints_symptoms = o.value_text where o.concept_id = @other_somatic_complaints_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.duration_of_somatic_complaints_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @duration_of_somatic_complaints_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TELEPHONE_NUMBER = o.value_text where o.concept_id = @TELEPHONE_NUMBER;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Cognitive_disability = concept_name(o.value_coded, 'en') where o.concept_id = @Cognitive_disability;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Duration_of_Cognitive_disability_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Duration_of_Cognitive_disability_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.reason_of_unemployment = o.value_text where o.concept_id = @reason_of_unemployment;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Alcohol_withdrawal_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Alcohol_withdrawal_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_substances_used = o.value_text where o.concept_id = @other_substances_used;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Longest_sober_period = concept_name(o.value_coded, 'en') where o.concept_id = @Longest_sober_period;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Quantity = o.value_text where o.concept_id = @Quantity;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Attempts = concept_name(o.value_coded, 'en') where o.concept_id = @Attempts;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_reason_for_missing_visit = o.value_text where o.concept_id = @Other_reason_for_missing_visit;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Result_of_Call = concept_name(o.value_coded, 'en') where o.concept_id = @Result_of_Call;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.REASON_OF_CALLING_PATIENT = concept_name(o.value_coded, 'en') where o.concept_id = @REASON_OF_CALLING_PATIENT;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Type_of_Attempt = concept_name(o.value_coded, 'en') where o.concept_id = @Type_of_Attempt;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reason_for_missed_visit = concept_name(o.value_coded, 'en') where o.concept_id = @Reason_for_missed_visit;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.explain_the_family_member_suicide_attempts = o.value_text where o.concept_id = @explain_the_family_member_suicide_attempts;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MAIN_ACTIVITY_NON_CODED = o.value_text where o.concept_id = @MAIN_ACTIVITY_NON_CODED;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_seizure_symptoms = o.value_text where o.concept_id = @other_seizure_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_referrals_planned = o.value_text where o.concept_id = @other_referrals_planned;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Extrapyramidal_Symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Extrapyramidal_Symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PM_plus_skills_challenges = concept_name(o.value_coded, 'en') where o.concept_id = @PM_plus_skills_challenges;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Is_patient_willing_to_practice_using_PM_plus_skill_this_week = concept_name(o.value_coded, 'en') where o.concept_id = @Is_patient_willing_to_practice_using_PM_plus_skill_this_week;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Specific_skills_discussed_during_the_visit = concept_name(o.value_coded, 'en') where o.concept_id = @Specific_skills_discussed_during_the_visit;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Were_potential_hurdles_discussed = concept_name(o.value_coded, 'en') where o.concept_id = @Were_potential_hurdles_discussed;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.patient_understand_skill_concept_discussed_during_this_session = concept_name(o.value_coded, 'en') where o.concept_id = @patient_understand_skill_concept_discussed_during_this_session;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_speech_description = o.value_text where o.concept_id = @other_speech_description;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_kind_of_appearance = o.value_text where o.concept_id = @other_kind_of_appearance;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_thought_content = o.value_text where o.concept_id = @other_thought_content;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_functional_Impairments = o.value_text where o.concept_id = @Other_functional_Impairments;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Extrapyramidal_Symptoms = o.value_text where o.concept_id = @Other_Extrapyramidal_Symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_Aggression_signs = o.value_text where o.concept_id = @other_Aggression_signs;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Frequency = concept_name(o.value_coded, 'en') where o.concept_id = @Frequency;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.List_of_Psychotrophic_medication_used_by_family_member = o.value_text where o.concept_id = @List_of_Psychotrophic_medication_used_by_family_member;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_affect = o.value_text where o.concept_id = @other_affect;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_living_situation = o.value_text where o.concept_id = @other_living_situation;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Precipitating_events_symptom = o.value_text where o.concept_id = @Other_Precipitating_events_symptom;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ANXIETY_DISORDER = concept_name(o.value_coded, 'en') where o.concept_id = @ANXIETY_DISORDER;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Anxiety_Symptom_Duration = concept_name(o.value_coded, 'en') where o.concept_id = @Anxiety_Symptom_Duration;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PTSD = concept_name(o.value_coded, 'en') where o.concept_id = @PTSD;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_PTSD_symptom = o.value_text where o.concept_id = @other_PTSD_symptom;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PTSD_symptom_duration = concept_name(o.value_coded, 'en') where o.concept_id = @PTSD_symptom_duration;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_clinical_diagnosis_non_coded = o.value_text where o.concept_id = @Other_clinical_diagnosis_non_coded;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Alcohol_withdrawal_symptoms = o.value_text where o.concept_id = @Other_Alcohol_withdrawal_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_depression_symptoms = o.value_text where o.concept_id = @Other_depression_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_psychosis_symptoms = o.value_text where o.concept_id = @other_psychosis_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_return_visit_location = o.value_text where o.concept_id = @Other_return_visit_location;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_Cognitive_disability_symptoms = o.value_text where o.concept_id = @other_Cognitive_disability_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Was_the_patient_able_to_perform_exercise_appropriately = concept_name(o.value_coded, 'en') where o.concept_id = @Was_the_patient_able_to_perform_exercise_appropriately;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Is_the_patient_able_to_apply_PM_plus_skills_and_techniques = concept_name(o.value_coded, 'en') where o.concept_id = @Is_the_patient_able_to_apply_PM_plus_skills_and_techniques;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Did_the_patient_understand_benefits_of_deep_breathing = concept_name(o.value_coded, 'en') where o.concept_id = @Did_the_patient_understand_benefits_of_deep_breathing;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Facility = o.value_text where o.concept_id = @Facility;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Therapy = o.value_text where o.concept_id = @Other_Therapy;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Personality_disorder_symptom_duration = concept_name(o.value_coded, 'en') where o.concept_id = @Personality_disorder_symptom_duration;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Personality_Disorder = concept_name(o.value_coded, 'en') where o.concept_id = @Personality_Disorder;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_medical_diagnose = o.value_text where o.concept_id = @Other_medical_diagnose;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PHQ_9_score_numeric = o.value_numeric where o.concept_id = @PHQ_9_score_numeric;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_result_of_call = o.value_text where o.concept_id = @Other_result_of_call;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_PM_plus_skills_challenges = o.value_text where o.concept_id = @Other_PM_plus_skills_challenges;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ALLERGY = o.value_text where o.concept_id = @ALLERGY;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Action_taken = o.value_text where o.concept_id = @Action_taken;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_reasons_why_the_patient_in_PM_plus_intervention = o.value_text where o.concept_id = @other_reasons_why_the_patient_in_PM_plus_intervention;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Mania_symptoms = o.value_text where o.concept_id = @Other_Mania_symptoms;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Date_of_Death = o.value_datetime where o.concept_id = @Date_of_Death;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_facility = o.value_text where o.concept_id = @OTHER_facility;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PM_plus_Session_additional_Notes = o.value_text where o.concept_id = @PM_plus_Session_additional_Notes;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Personality_Disorders = o.value_text where o.concept_id = @Other_Personality_Disorders;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Allergic_reaction_non_coded = o.value_text where o.concept_id = @Allergic_reaction_non_coded;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reason_for_Declining_Care = o.value_text where o.concept_id = @Reason_for_Declining_Care;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_anxiety_symptom = o.value_text where o.concept_id = @other_anxiety_symptom;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.people_I_can_contact_during_times_of_distress = o.value_text where o.concept_id = @people_I_can_contact_during_times_of_distress;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Suicide_Risk_Factors = concept_name(o.value_coded, 'en') where o.concept_id = @Suicide_Risk_Factors;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.explain_the_suicidal_plan = o.value_text where o.concept_id = @explain_the_suicidal_plan;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.has_patient_been_referred = concept_name(o.value_coded, 'en') where o.concept_id = @has_patient_been_referred;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Suicide_Risk_Factors = o.value_text where o.concept_id = @Other_Suicide_Risk_Factors;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Does_the_patient_have_the_MEANS_to_execute_the_suicidal_plan = concept_name(o.value_coded, 'en') where o.concept_id = @Does_the_patient_have_the_MEANS_to_execute_the_suicidal_plan;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.a_patient_has_a_suicidal_plan = concept_name(o.value_coded, 'en') where o.concept_id = @a_patient_has_a_suicidal_plan;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.What_is_the_plan_of_action_for_safety_of_this_patient = o.value_text where o.concept_id = @What_is_the_plan_of_action_for_safety_of_this_patient;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.has_the_patient_been_given_a_Suicide_Safety_Plan = concept_name(o.value_coded, 'en') where o.concept_id = @has_the_patient_been_given_a_Suicide_Safety_Plan;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.why_the_patient_wasn_t_given_a_suicide_safety_plan = concept_name(o.value_coded, 'en') where o.concept_id = @why_the_patient_wasn_t_given_a_suicide_safety_plan;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_tests_or_procedures = o.value_text where o.concept_id = @Other_tests_or_procedures;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESULT_OF_HIV_TEST = concept_name(o.value_coded, 'en') where o.concept_id = @RESULT_OF_HIV_TEST;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_ALBUMIN = o.value_numeric where o.concept_id = @SERUM_ALBUMIN;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.what_is_the_plan_for_management = o.value_text where o.concept_id = @what_is_the_plan_for_management;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.referred_to_coded = concept_name(o.value_coded, 'en') where o.concept_id = @referred_to_coded;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Is_the_CHW_notified_about_this_patient = concept_name(o.value_coded, 'en') where o.concept_id = @Is_the_CHW_notified_about_this_patient;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Suicide_protective_factors = concept_name(o.value_coded, 'en') where o.concept_id = @Suicide_protective_factors;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Risk_classification = concept_name(o.value_coded, 'en') where o.concept_id = @Risk_classification;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_practical_community_supports_I_can_contact = o.value_text where o.concept_id = @Other_practical_community_supports_I_can_contact;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_warning_signs_to_look_out_for = o.value_text where o.concept_id = @Other_warning_signs_to_look_out_for;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CAUSE_OF_DEATH = concept_name(o.value_coded, 'en') where o.concept_id = @CAUSE_OF_DEATH;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_ways_to_ensure_that_I_am_safe = o.value_text where o.concept_id = @other_ways_to_ensure_that_I_am_safe;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Church_Leader = o.value_text where o.concept_id = @Church_Leader;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_ways_I_can_cope_with_these_feelings = o.value_text where o.concept_id = @Other_ways_I_can_cope_with_these_feelings;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Electroencephalogram = o.value_text where o.concept_id = @Electroencephalogram;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Date_of_group_of_tests = o.value_datetime where o.concept_id = @Date_of_group_of_tests;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RED_BLOOD_CELLS = o.value_numeric where o.concept_id = @RED_BLOOD_CELLS;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LYMPHOCYTES = o.value_numeric where o.concept_id = @LYMPHOCYTES;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEMOGLOBIN = o.value_numeric where o.concept_id = @HEMOGLOBIN;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NEUTROPHILS = o.value_numeric where o.concept_id = @NEUTROPHILS;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MONOCYTES = o.value_numeric where o.concept_id = @MONOCYTES;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.EOSINOPHILS = o.value_numeric where o.concept_id = @EOSINOPHILS;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PLATELETS = o.value_numeric where o.concept_id = @PLATELETS;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEMATOCRIT = o.value_numeric where o.concept_id = @HEMATOCRIT;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MEAN_CORPUSCULAR_HEMOGLOBIN = o.value_numeric where o.concept_id = @MEAN_CORPUSCULAR_HEMOGLOBIN;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RED_CELL_DISTRIBUTION_WIDTH = o.value_numeric where o.concept_id = @RED_CELL_DISTRIBUTION_WIDTH;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BASOPHILS = o.value_numeric where o.concept_id = @BASOPHILS;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MEAN_CORPUSCULAR_VOLUME = o.value_numeric where o.concept_id = @MEAN_CORPUSCULAR_VOLUME;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MEAN_CELL_HEMOGLOBIN_CONCENTRATION = o.value_numeric where o.concept_id = @MEAN_CELL_HEMOGLOBIN_CONCENTRATION;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ALKALINE_PHOSPHATASE = o.value_numeric where o.concept_id = @ALKALINE_PHOSPHATASE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TOTAL_BILIRUBIN = o.value_numeric where o.concept_id = @TOTAL_BILIRUBIN;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_SODIUM = o.value_numeric where o.concept_id = @SERUM_SODIUM;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CHLORIDE = o.value_numeric where o.concept_id = @SERUM_CHLORIDE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CALCIUM = o.value_numeric where o.concept_id = @SERUM_CALCIUM;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_UREA_NITROGEN = o.value_numeric where o.concept_id = @BLOOD_UREA_NITROGEN;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_GLUCOSE = o.value_numeric where o.concept_id = @SERUM_GLUCOSE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_POTASSIUM_mEq_L = o.value_numeric where o.concept_id = @SERUM_POTASSIUM_mEq_L;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CARBON_DIOXIDE = o.value_numeric where o.concept_id = @SERUM_CARBON_DIOXIDE;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Head_CT_MRI_non_coded = o.value_text where o.concept_id = @Head_CT_MRI_non_coded;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Suicide_protective_factor = o.value_text where o.concept_id = @Other_Suicide_protective_factor;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_reason_why_the_patient_wasn_t_given_a_suicide_safety_plan = o.value_text where o.concept_id = @other_reason_why_the_patient_wasn_t_given_a_suicide_safety_plan;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CHW = o.value_text where o.concept_id = @CHW;
update temp_mental_health_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Village_or_local_Leader = o.value_text where o.concept_id = @Village_or_local_Leader;


select * from temp_mental_health_encounters;