# First create a temporary table to hold the data to export
create temporary table temp_asthma_encounters (
    PATIENT_ID int,
    ENCOUNTER_ID int,
    FORM text,
    ENCOUNTER_DATE date,
    Provide_asthma_spacer text,
    DIASTOLIC_BLOOD_PRESSURE float,
    Inhaler_and_spacer_use_instruction text,
    WEIGHT_KG float,
    RETURN_VISIT_DATE date,
    Proper_inhaler_technique text,
    WAKING_UP_DUE_TO_DYSPNEA text,
    Asthma_classification text,
    Step_therapy text,
    SALBUTAMOL_USE text,
    Missed_any_medication text,
    SYSTOLIC_BLOOD_PRESSURE float,
    Diagnosis_or_problem_non_coded text,
    HEIGHT_CM float,
    Physical_pain_score float,
    Psychological_pain_score text,
    Spiritual_pain_score text,
    SHORTNESS_OF_BREATH_coded text,
    Peak_flow_after_salbutamol float,
    COMMENTS_AT_CONCLUSION_OF_EXAMINATION text,
    Chest_Thorax_Exam_Findings text,
    ABDOMINAL_EXAM_FINDINGS text,
    HEENT_EXAM_FINDINGS text,
    DDB_ECHOCARDIOGRAPH_RESULT text,
    Predicted_Peak_Flow float,
    CARDIAC_EXAM_FINDINGS text,
    LUNG_EXAM_FINDINGS text,
    BLOOD_OXYGEN_SATURATION float,
    UROGENITAL_EXAM_FINDINGS text,
    RESPIRATORY_RATE float,
    Peak_flow_before_salbutamol float,
    Peak_flow_percent_best_effort_vs_peak_flow_predicted float,
    EXTREMITY_EXAM_FINDINGS text,
    TEMPERATURE_C float,
    Percent_peak_flow_change_after_salbutamol float,
    NEUROLOGICAL_EXAM_FINDINGS text,
    PULSE float,
    PATIENTS_FLUID_MANAGEMENT text,
    CARDIAC_MEDICATION text,
    Patient_s_Contact_Phone_Owner text,
    NIGHT_DOSE_IN_MILLIGRAMS float,
    MORNING_DOSE_IN_MILLIGRAMS float,
    NOON_DOSE_IN_MILLIGRAMS float,
    TELEPHONE_NUMBER text,
    GENERAL_EXAM_FINDINGS text,
    SERUM_CREATININE float,
    NAME_OF_HEALTH_CARE_PROVIDER text,
    HEMATOCRIT float,
    TIME_UNITS text,
    Family_Member_Chronic_Diseases text,
    TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL text,
    Asthma_medications text,
    NEUTROPHILS float,
    Duration float,
    Patient_Medical_History text,
    Clinican_notes text,
    TOTAL_PROTEIN float,
    HEMOGLOBIN float,
    LYMPHOCYTES float,
    ALLERGY_TO_DRUG text,
    UBUDEHE_CATEGORY text,
    CURRENT_COMPLAINTS_OR_SYMPTOMS text,
    SERUM_GLUCOSE float,
    ALLERGY_COMMENT text,
    RESULT_OF_HIV_TEST text,
    Obstestrical text,
    Chronic_Respiratory_diseases text,
    Other text,
    PREVIOUS_MEDICAL_HISTORY text,
    Surgicalhistory text,
    Clinical_diagnosis_for_asthma text,
    patient_chronic_disease_history text,
    Sensation_in_right_foot float,
    Sensation_in_left_foot float,
    treatment_appoach text,
    CHRONIC_CARE_DIAGNOSIS text,
    MEDICATION_HISTORY text,
    Hypertension_Stages text,
    Pain_score_comments text,
    Other_Diseasetext text,
    BLOOD_UREA_NITROGEN float,
    Home_Based_Care_Practionner_Phone_Number text,
    Family_member_suffered_from_Chronic_disease text,
    PLATELETS float,
    Family_Care_givername text,
    Family_Care_giver_Phone_Number text,
    LOCATION_OF_CRACKLES text,
    other_medical_findings text,
    LOCATION_OF_CARDIAC_MURMUR text,
    NAME_OF_REFERRING_SITE text,
    Aminophyilline_dose_in_milligrams float,
    TRIGLYCERIDES float,
    Diabetes_Medications text,
    DATE_OF_LABORATORY_TEST date,
    OTHER_LAB_TEST_RESULT text,
    other_pain_drugs text,
    OTHER_LAB_TEST_NAME text,
    ASAT_RESULT text,
    ALAT_RESULT text,
    HbA1c float,
    SERUM_POTASSIUM float,
    SERUM_SODIUM float,
    OTHER_GENERAL_EXAM_FINDINGS text,
    Exit_NCD_but_did_not_exit_care text,
    ECHOCARDIOGRAM_COMMENT text,
    Facility text,
    Other_clinical_diagnosis_non_coded text,
    Pain_drugs text,
    Other_Asthma_drug text,
    drug_prescription_construct float,
    DRUG_FREQUENCY_CODED text,
    Renal_Failure_Stages text,
    Doxycycline_Dose_in_milligrams float,
    Number_or_days float,
    NYHA_CLASS text
);

# Populate the "rows" of this table to contain all asthma encounters

insert into temp_asthma_encounters (patient_id, encounter_id,FORM,ENCOUNTER_DATE)
select enc.patient_id, enc.encounter_id,f.name,enc.encounter_datetime
from encounter enc
inner join form f on f.form_id=enc.form_id
inner join patient_program pp on pp.patient_id=enc.patient_id
where f.name in 
	(
		"NCD ASTHMA: Enrollment form","NCD Asthma: Exit from Care Information","NCD Asthma: medication List","NCD Asthma: other investigations",
        "NCD Asthma: Rendez-Vous","NCD Asthma: Diagnosis And Problem List"
	)
    and enc.voided=0
    and f.retired=0
;

# Populate the "columns" of this table to contain data for each encounter row

# To optimize performance, first reduce the size of the observations being queried to those non-voided in these encounters
DROP TEMPORARY TABLE IF EXISTS temp_obs;
create temporary table temp_obs
select o.obs_id, o.obs_group_id, o.encounter_id, o.person_id, o.concept_id, o.value_coded, o.value_numeric,
       o.value_text, o.value_datetime, o.value_coded_name_id, o.comments, o.date_created, o.value_drug, o.obs_datetime
from obs o
         inner join temp_asthma_encounters t on t.encounter_id = o.encounter_id
where o.voided = 0
;

# Add indexes on these for further query performance
create index temp_obs_oi on temp_obs(obs_id);
create index temp_obs_ci1 on temp_obs(encounter_id, concept_id);
create index temp_obs_ci2 on temp_obs(obs_group_id, concept_id);

update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Provide_asthma_spacer = concept_name(o.value_coded, 'en') where o.concept_id = @Provide_asthma_spacer;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DIASTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @DIASTOLIC_BLOOD_PRESSURE;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Inhaler_and_spacer_use_instruction = concept_name(o.value_coded, 'en') where o.concept_id = @Inhaler_and_spacer_use_instruction;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WEIGHT_KG = o.value_numeric where o.concept_id = @WEIGHT_KG;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RETURN_VISIT_DATE = o.value_datetime where o.concept_id = @RETURN_VISIT_DATE;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Proper_inhaler_technique = concept_name(o.value_coded, 'en') where o.concept_id = @Proper_inhaler_technique;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WAKING_UP_DUE_TO_DYSPNEA = concept_name(o.value_coded, 'en') where o.concept_id = @WAKING_UP_DUE_TO_DYSPNEA;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Asthma_classification = concept_name(o.value_coded, 'en') where o.concept_id = @Asthma_classification;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Step_therapy = concept_name(o.value_coded, 'en') where o.concept_id = @Step_therapy;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SALBUTAMOL_USE = concept_name(o.value_coded, 'en') where o.concept_id = @SALBUTAMOL_USE;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Missed_any_medication = concept_name(o.value_coded, 'en') where o.concept_id = @Missed_any_medication;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SYSTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @SYSTOLIC_BLOOD_PRESSURE;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diagnosis_or_problem_non_coded = o.value_text where o.concept_id = @Diagnosis_or_problem_non_coded;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEIGHT_CM = o.value_numeric where o.concept_id = @HEIGHT_CM;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Physical_pain_score = o.value_numeric where o.concept_id = @Physical_pain_score;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Psychological_pain_score = concept_name(o.value_coded, 'en') where o.concept_id = @Psychological_pain_score;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Spiritual_pain_score = concept_name(o.value_coded, 'en') where o.concept_id = @Spiritual_pain_score;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SHORTNESS_OF_BREATH_coded = concept_name(o.value_coded, 'en') where o.concept_id = @SHORTNESS_OF_BREATH_coded;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_after_salbutamol = o.value_numeric where o.concept_id = @Peak_flow_after_salbutamol;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.COMMENTS_AT_CONCLUSION_OF_EXAMINATION = o.value_text where o.concept_id = @COMMENTS_AT_CONCLUSION_OF_EXAMINATION;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chest_Thorax_Exam_Findings = concept_name(o.value_coded, 'en') where o.concept_id = @Chest_Thorax_Exam_Findings;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ABDOMINAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @ABDOMINAL_EXAM_FINDINGS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEENT_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @HEENT_EXAM_FINDINGS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DDB_ECHOCARDIOGRAPH_RESULT = concept_name(o.value_coded, 'en') where o.concept_id = @DDB_ECHOCARDIOGRAPH_RESULT;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Predicted_Peak_Flow = o.value_numeric where o.concept_id = @Predicted_Peak_Flow;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CARDIAC_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @CARDIAC_EXAM_FINDINGS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LUNG_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @LUNG_EXAM_FINDINGS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_OXYGEN_SATURATION = o.value_numeric where o.concept_id = @BLOOD_OXYGEN_SATURATION;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.UROGENITAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @UROGENITAL_EXAM_FINDINGS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESPIRATORY_RATE = o.value_numeric where o.concept_id = @RESPIRATORY_RATE;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_before_salbutamol = o.value_numeric where o.concept_id = @Peak_flow_before_salbutamol;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_percent_best_effort_vs_peak_flow_predicted = o.value_numeric where o.concept_id = @Peak_flow_percent_best_effort_vs_peak_flow_predicted;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.EXTREMITY_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @EXTREMITY_EXAM_FINDINGS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TEMPERATURE_C = o.value_numeric where o.concept_id = @TEMPERATURE_C;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Percent_peak_flow_change_after_salbutamol = o.value_numeric where o.concept_id = @Percent_peak_flow_change_after_salbutamol;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NEUROLOGICAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @NEUROLOGICAL_EXAM_FINDINGS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PULSE = o.value_numeric where o.concept_id = @PULSE;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PATIENTS_FLUID_MANAGEMENT = concept_name(o.value_coded, 'en') where o.concept_id = @PATIENTS_FLUID_MANAGEMENT;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CARDIAC_MEDICATION = concept_name(o.value_coded, 'en') where o.concept_id = @CARDIAC_MEDICATION;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_s_Contact_Phone_Owner = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_s_Contact_Phone_Owner;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NIGHT_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @NIGHT_DOSE_IN_MILLIGRAMS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MORNING_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @MORNING_DOSE_IN_MILLIGRAMS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NOON_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @NOON_DOSE_IN_MILLIGRAMS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TELEPHONE_NUMBER = o.value_text where o.concept_id = @TELEPHONE_NUMBER;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.GENERAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @GENERAL_EXAM_FINDINGS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CREATININE = o.value_numeric where o.concept_id = @SERUM_CREATININE;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_HEALTH_CARE_PROVIDER = o.value_text where o.concept_id = @NAME_OF_HEALTH_CARE_PROVIDER;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEMATOCRIT = o.value_numeric where o.concept_id = @HEMATOCRIT;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TIME_UNITS = concept_name(o.value_coded, 'en') where o.concept_id = @TIME_UNITS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Member_Chronic_Diseases = concept_name(o.value_coded, 'en') where o.concept_id = @Family_Member_Chronic_Diseases;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL = concept_name(o.value_coded, 'en') where o.concept_id = @TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Asthma_medications = concept_name(o.value_coded, 'en') where o.concept_id = @Asthma_medications;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NEUTROPHILS = o.value_numeric where o.concept_id = @NEUTROPHILS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Duration = o.value_numeric where o.concept_id = @Duration;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_Medical_History = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_Medical_History;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Clinican_notes = o.value_text where o.concept_id = @Clinican_notes;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TOTAL_PROTEIN = o.value_numeric where o.concept_id = @TOTAL_PROTEIN;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEMOGLOBIN = o.value_numeric where o.concept_id = @HEMOGLOBIN;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LYMPHOCYTES = o.value_numeric where o.concept_id = @LYMPHOCYTES;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ALLERGY_TO_DRUG = concept_name(o.value_coded, 'en') where o.concept_id = @ALLERGY_TO_DRUG;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.UBUDEHE_CATEGORY = concept_name(o.value_coded, 'en') where o.concept_id = @UBUDEHE_CATEGORY;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CURRENT_COMPLAINTS_OR_SYMPTOMS = o.value_text where o.concept_id = @CURRENT_COMPLAINTS_OR_SYMPTOMS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_GLUCOSE = o.value_numeric where o.concept_id = @SERUM_GLUCOSE;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ALLERGY_COMMENT = o.value_text where o.concept_id = @ALLERGY_COMMENT;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESULT_OF_HIV_TEST = concept_name(o.value_coded, 'en') where o.concept_id = @RESULT_OF_HIV_TEST;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Obstestrical = o.value_text where o.concept_id = @Obstestrical;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chronic_Respiratory_diseases = concept_name(o.value_coded, 'en') where o.concept_id = @Chronic_Respiratory_diseases;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other = o.value_text where o.concept_id = @Other;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PREVIOUS_MEDICAL_HISTORY = o.value_text where o.concept_id = @PREVIOUS_MEDICAL_HISTORY;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Surgicalhistory = o.value_text where o.concept_id = @Surgicalhistory;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Clinical_diagnosis_for_asthma = concept_name(o.value_coded, 'en') where o.concept_id = @Clinical_diagnosis_for_asthma;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.patient_chronic_disease_history = concept_name(o.value_coded, 'en') where o.concept_id = @patient_chronic_disease_history;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Sensation_in_right_foot = o.value_numeric where o.concept_id = @Sensation_in_right_foot;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Sensation_in_left_foot = o.value_numeric where o.concept_id = @Sensation_in_left_foot;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.treatment_appoach = concept_name(o.value_coded, 'en') where o.concept_id = @treatment_appoach;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CHRONIC_CARE_DIAGNOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @CHRONIC_CARE_DIAGNOSIS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MEDICATION_HISTORY = concept_name(o.value_coded, 'en') where o.concept_id = @MEDICATION_HISTORY;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Hypertension_Stages = concept_name(o.value_coded, 'en') where o.concept_id = @Hypertension_Stages;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pain_score_comments = o.value_text where o.concept_id = @Pain_score_comments;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Diseasetext = o.value_text where o.concept_id = @Other_Diseasetext;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_UREA_NITROGEN = o.value_numeric where o.concept_id = @BLOOD_UREA_NITROGEN;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Home_Based_Care_Practionner_Phone_Number = o.value_text where o.concept_id = @Home_Based_Care_Practionner_Phone_Number;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_member_suffered_from_Chronic_disease = concept_name(o.value_coded, 'en') where o.concept_id = @Family_member_suffered_from_Chronic_disease;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PLATELETS = o.value_numeric where o.concept_id = @PLATELETS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Care_givername = o.value_text where o.concept_id = @Family_Care_givername;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Care_giver_Phone_Number = o.value_text where o.concept_id = @Family_Care_giver_Phone_Number;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LOCATION_OF_CRACKLES = o.value_text where o.concept_id = @LOCATION_OF_CRACKLES;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_medical_findings = o.value_text where o.concept_id = @other_medical_findings;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LOCATION_OF_CARDIAC_MURMUR = o.value_text where o.concept_id = @LOCATION_OF_CARDIAC_MURMUR;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_REFERRING_SITE = o.value_text where o.concept_id = @NAME_OF_REFERRING_SITE;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Aminophyilline_dose_in_milligrams = o.value_numeric where o.concept_id = @Aminophyilline_dose_in_milligrams;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TRIGLYCERIDES = o.value_numeric where o.concept_id = @TRIGLYCERIDES;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diabetes_Medications = concept_name(o.value_coded, 'en') where o.concept_id = @Diabetes_Medications;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DATE_OF_LABORATORY_TEST = o.value_datetime where o.concept_id = @DATE_OF_LABORATORY_TEST;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_RESULT = o.value_text where o.concept_id = @OTHER_LAB_TEST_RESULT;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_pain_drugs = o.value_text where o.concept_id = @other_pain_drugs;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_NAME = o.value_text where o.concept_id = @OTHER_LAB_TEST_NAME;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ASAT_RESULT = o.value_text where o.concept_id = @ASAT_RESULT;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ALAT_RESULT = o.value_text where o.concept_id = @ALAT_RESULT;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HbA1c = o.value_numeric where o.concept_id = @HbA1c;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_POTASSIUM = o.value_numeric where o.concept_id = @SERUM_POTASSIUM;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_SODIUM = o.value_numeric where o.concept_id = @SERUM_SODIUM;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_GENERAL_EXAM_FINDINGS = o.value_text where o.concept_id = @OTHER_GENERAL_EXAM_FINDINGS;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Exit_NCD_but_did_not_exit_care = concept_name(o.value_coded, 'en') where o.concept_id = @Exit_NCD_but_did_not_exit_care;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ECHOCARDIOGRAM_COMMENT = o.value_text where o.concept_id = @ECHOCARDIOGRAM_COMMENT;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Facility = o.value_text where o.concept_id = @Facility;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_clinical_diagnosis_non_coded = o.value_text where o.concept_id = @Other_clinical_diagnosis_non_coded;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pain_drugs = concept_name(o.value_coded, 'en') where o.concept_id = @Pain_drugs;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Asthma_drug = o.value_text where o.concept_id = @Other_Asthma_drug;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.drug_prescription_construct = o.value_numeric where o.concept_id = @drug_prescription_construct;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DRUG_FREQUENCY_CODED = concept_name(o.value_coded, 'en') where o.concept_id = @DRUG_FREQUENCY_CODED;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Renal_Failure_Stages = concept_name(o.value_coded, 'en') where o.concept_id = @Renal_Failure_Stages;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Doxycycline_Dose_in_milligrams = o.value_numeric where o.concept_id = @Doxycycline_Dose_in_milligrams;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Number_or_days = o.value_numeric where o.concept_id = @Number_or_days;
update temp_asthma_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NYHA_CLASS = concept_name(o.value_coded, 'en') where o.concept_id = @NYHA_CLASS;


-- update temp_asthma_encounters   set BODY_MASS_INDEX_MEASURED = IF(HEIGHT_CM && WEIGHT_KG , IF(HEIGHT_CM > 3,ROUND(WEIGHT_KG/(HEIGHT_CM/100*HEIGHT_CM/100),1) ,ROUND(WEIGHT_KG/(HEIGHT_CM*HEIGHT_CM),1)) , null);

select * from temp_asthma_encounters;