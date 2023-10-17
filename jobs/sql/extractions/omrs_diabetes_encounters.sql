SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
# First create a temporary table to hold the data to export
create temporary table temp_diabetes_encounters (
    PATIENT_ID int,
    ENCOUNTER_ID int,
    FORM text,
    SERUM_GLUCOSE double,
    SERUM_CREATININE double,
    Glucose_Test text,
    PULSE double,
    Compliance text,
    HYPOGLYCEMIA text,
    WEIGHT_KG double,
    HbA1c double,
    URINARY_ALBUMIN double,
    DIASTOLIC_BLOOD_PRESSURE double,
    SYSTOLIC_BLOOD_PRESSURE double,
    Sensation_in_right_foot double,
    Sensation_in_left_foot double,
    RETURN_VISIT_DATE date,
    EXTREMITY_EXAM_FINDINGS text,
    HEIGHT_CM double,
    Physical_pain_score double,
    Psychological_pain_score text,
    Spiritual_pain_score text,
    Pain_score_comments text,
    COMMENTS_AT_CONCLUSION_OF_EXAMINATION text,
    Part_of_the_day text,
    CREATININE_CLEARANCE double,
    SERUM_SODIUM double,
    SERUM_POTASSIUM double,
    BODY_MASS_INDEX_MEASURED double,
    OPHTHALMOLOGY_SERVICE text,
    MORNING_DOSE_IN_MILLIGRAMS double,
    NIGHT_DOSE_IN_MILLIGRAMS double,
    BED_TIME_DOSE_IN_MILLIGRAMS double,
    Diagnosis_or_problem_non_coded text,
    Pain_drugs text,
    other_pain_drugs text,
    NOON_DOSE_IN_MILLIGRAMS double,
    OTHER_LAB_TEST_NAME text,
    OTHER_LAB_TEST_RESULT text,
    ABDOMINAL_EXAM_FINDINGS text,
    CURRENT_COMPLAINTS_OR_SYMPTOMS text,
    Surgical_history text,
    MEDICATION_HISTORY text,
    ALLERGIC text,
    TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL text,
    NAME_OF_REFERRING_SITE text,
    UROGENITAL_EXAM_FINDINGS text,
    Type_of_diabetes_diagnosis text,
    LUNG_EXAM_FINDINGS text,
    RESPIRATORY_RATE double,
    CHRONIC_CARE_DIAGNOSIS text,
    GENERAL_EXAM_FINDINGS text,
    BLOOD_OXYGEN_SATURATION double,
    Chest_Thorax_Exam_Findings text,
    UBUDEHE_CATEGORY text,
    PATIENTS_FLUID_MANAGEMENT text,
    HEENT_EXAM_FINDINGS text,
    CARDIAC_MEDICATION text,
    CARDIAC_EXAM_FINDINGS text,
    NEUROLOGICAL_EXAM_FINDINGS text,
    TEMPERATURE_C double,
    Clinican_notes text,
    Obstestrical text,
    HEMATOCRIT double,
    ASAT_RESULT text,
    RESULT_OF_HIV_TEST text,
    MONOCYTES double,
    TIME_UNITS text,
    Morning_Dose_in_Units double,
    Diabetes_Medications text,
    Evening_Dose_in_Units double,
    Noon_Dose_in_Units double,
    PLATELETS double,
    LYMPHOCYTES double,
    NEUTROPHILS double,
    Bedtime_Dose_in_Units double,
    RED_BLOOD_CELLS double,
    WHITE_BLOOD_CELLS double,
    BLOOD_UREA_NITROGEN double,
    ALAT_RESULT text,
    Patient_Medical_History text,
    EOSINOPHILS double,
    Duration double,
    HEMOGLOBIN double,
    Other text,
    patient_chronic_disease_history text,
    TELEPHONE_NUMBER text,
    Patient_Contact_Phone_Owner text,
    Family_Care_giver_Phone_Number text,
    NAME_OF_HEALTH_CARE_PROVIDER text,
    PREVIOUS_MEDICAL_HISTORY text,
    DDB_ECHOCARDIOGRAPH_RESULT text,
    treatment_appoach text,
    Family_Care_giver_name text,
    TOTAL_PROTEIN double,
    Family_member_suffered_from_Chronic_disease text,
    Chronic_Respiratory_diseases text,
    Other_Disease_text text,
    ALLERGY_COMMENT varchar(1000),
    Family_Member_Chronic_Diseases text,
    ketone double,
    Other_clinical_diagnosis_non_coded text,
    Hypertension_Stages text,
    BASOPHILS double,
    X_RAY_CHEST text,
    Renal_Failure_Stages text,
    Other_Diabetes_Drug text,
    ELECTROCARDIOGRAM_DIAGNOSIS text,
    other_medical_findings text,
    ELECTROCARDIOGRAM_DIAGNOSIS_text text,
    Asthma_medications text,
    Predicted_Peak_Flow double,
    Peak_flow_before_salbutamol double,
    Clinical_diagnosis_for_asthma text,
    Peak_flow_after_salbutamol double,
    ECHOCARDIOGRAM_COMMENT text,
    OTHER_GENERAL_EXAM_FINDINGS text,
    Scar_Location text,
    result_to_other_medical_findings text
);

# Populate the "rows" of this table to contain all diabetes encounters

insert into temp_diabetes_encounters (patient_id, encounter_id,FORM)
select enc.patient_id, enc.encounter_id,f.name 
from encounter enc
inner join form f on f.form_id=enc.form_id
where f.name in 
	(
		'NCD Diabetes: rendez-vous','NCD Diabetes: Medication List','NCD Diabetes: Insulin List'
		,'NCD Diabetes: Other Investigations','NCD Diabetes: EXAM LABORATORY TEST','NCD Diabetes: Diagnosis and Problems',
		'NCD DIABETES: Exit from Care Information','NCD Diabetes: Enrollment form'
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
         inner join temp_diabetes_encounters t on t.encounter_id = o.encounter_id
where o.voided = 0
;

# Add indexes on these for further query performance
create index temp_obs_oi on temp_obs(obs_id);
create index temp_obs_ci1 on temp_obs(encounter_id, concept_id);
create index temp_obs_ci2 on temp_obs(obs_group_id, concept_id);

update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_GLUCOSE = o.value_numeric where o.concept_id = @SERUM_GLUCOSE;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CREATININE = o.value_numeric where o.concept_id = @SERUM_CREATININE;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Glucose_Test = concept_name(o.value_coded, 'en') where o.concept_id = @Glucose_Test;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PULSE = o.value_numeric where o.concept_id = @PULSE;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Compliance = concept_name(o.value_coded, 'en') where o.concept_id = @Compliance;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HYPOGLYCEMIA = concept_name(o.value_coded, 'en') where o.concept_id = @HYPOGLYCEMIA;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WEIGHT_KG = o.value_numeric where o.concept_id = @WEIGHT_KG;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HbA1c = o.value_numeric where o.concept_id = @HbA1c;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.URINARY_ALBUMIN = o.value_numeric where o.concept_id = @URINARY_ALBUMIN;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DIASTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @DIASTOLIC_BLOOD_PRESSURE;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SYSTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @SYSTOLIC_BLOOD_PRESSURE;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Sensation_in_right_foot = o.value_numeric where o.concept_id = @Sensation_in_right_foot;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Sensation_in_left_foot = o.value_numeric where o.concept_id = @Sensation_in_left_foot;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RETURN_VISIT_DATE = o.value_datetime where o.concept_id = @RETURN_VISIT_DATE;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.EXTREMITY_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @EXTREMITY_EXAM_FINDINGS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEIGHT_CM = o.value_numeric where o.concept_id = @HEIGHT_CM;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Physical_pain_score = o.value_numeric where o.concept_id = @Physical_pain_score;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Psychological_pain_score = concept_name(o.value_coded, 'en') where o.concept_id = @Psychological_pain_score;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Spiritual_pain_score = concept_name(o.value_coded, 'en') where o.concept_id = @Spiritual_pain_score;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pain_score_comments = o.value_text where o.concept_id = @Pain_score_comments;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.COMMENTS_AT_CONCLUSION_OF_EXAMINATION = o.value_text where o.concept_id = @COMMENTS_AT_CONCLUSION_OF_EXAMINATION;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Part_of_the_day = concept_name(o.value_coded, 'en') where o.concept_id = @Part_of_the_day;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CREATININE_CLEARANCE = o.value_numeric where o.concept_id = @CREATININE_CLEARANCE;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_SODIUM = o.value_numeric where o.concept_id = @SERUM_SODIUM;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_POTASSIUM = o.value_numeric where o.concept_id = @SERUM_POTASSIUM;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BODY_MASS_INDEX_MEASURED = o.value_numeric where o.concept_id = @BODY_MASS_INDEX_MEASURED;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OPHTHALMOLOGY_SERVICE = o.value_text where o.concept_id = @OPHTHALMOLOGY_SERVICE;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MORNING_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @MORNING_DOSE_IN_MILLIGRAMS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NIGHT_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @NIGHT_DOSE_IN_MILLIGRAMS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BED_TIME_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @BED_TIME_DOSE_IN_MILLIGRAMS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diagnosis_or_problem_non_coded = o.value_text where o.concept_id = @Diagnosis_or_problem_non_coded;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pain_drugs = concept_name(o.value_coded, 'en') where o.concept_id = @Pain_drugs;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_pain_drugs = o.value_text where o.concept_id = @other_pain_drugs;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NOON_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @NOON_DOSE_IN_MILLIGRAMS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_NAME = o.value_text where o.concept_id = @OTHER_LAB_TEST_NAME;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_RESULT = o.value_text where o.concept_id = @OTHER_LAB_TEST_RESULT;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ABDOMINAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @ABDOMINAL_EXAM_FINDINGS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CURRENT_COMPLAINTS_OR_SYMPTOMS = o.value_text where o.concept_id = @CURRENT_COMPLAINTS_OR_SYMPTOMS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Surgical_history = o.value_text where o.concept_id = @Surgical_history;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MEDICATION_HISTORY = concept_name(o.value_coded, 'en') where o.concept_id = @MEDICATION_HISTORY;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ALLERGIC = concept_name(o.value_coded, 'en') where o.concept_id = @ALLERGIC;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL = concept_name(o.value_coded, 'en') where o.concept_id = @TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_REFERRING_SITE = o.value_text where o.concept_id = @NAME_OF_REFERRING_SITE;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.UROGENITAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @UROGENITAL_EXAM_FINDINGS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Type_of_diabetes_diagnosis = concept_name(o.value_coded, 'en') where o.concept_id = @Type_of_diabetes_diagnosis;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LUNG_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @LUNG_EXAM_FINDINGS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESPIRATORY_RATE = o.value_numeric where o.concept_id = @RESPIRATORY_RATE;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CHRONIC_CARE_DIAGNOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @CHRONIC_CARE_DIAGNOSIS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.GENERAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @GENERAL_EXAM_FINDINGS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_OXYGEN_SATURATION = o.value_numeric where o.concept_id = @BLOOD_OXYGEN_SATURATION;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chest_Thorax_Exam_Findings = concept_name(o.value_coded, 'en') where o.concept_id = @Chest_Thorax_Exam_Findings;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.UBUDEHE_CATEGORY = concept_name(o.value_coded, 'en') where o.concept_id = @UBUDEHE_CATEGORY;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PATIENTS_FLUID_MANAGEMENT = concept_name(o.value_coded, 'en') where o.concept_id = @PATIENTS_FLUID_MANAGEMENT;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEENT_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @HEENT_EXAM_FINDINGS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CARDIAC_MEDICATION = concept_name(o.value_coded, 'en') where o.concept_id = @CARDIAC_MEDICATION;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CARDIAC_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @CARDIAC_EXAM_FINDINGS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NEUROLOGICAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @NEUROLOGICAL_EXAM_FINDINGS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TEMPERATURE_C = o.value_numeric where o.concept_id = @TEMPERATURE_C;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Clinican_notes = o.value_text where o.concept_id = @Clinican_notes;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Obstestrical = o.value_text where o.concept_id = @Obstestrical;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEMATOCRIT = o.value_numeric where o.concept_id = @HEMATOCRIT;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ASAT_RESULT = o.value_text where o.concept_id = @ASAT_RESULT;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESULT_OF_HIV_TEST = concept_name(o.value_coded, 'en') where o.concept_id = @RESULT_OF_HIV_TEST;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MONOCYTES = o.value_numeric where o.concept_id = @MONOCYTES;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TIME_UNITS = concept_name(o.value_coded, 'en') where o.concept_id = @TIME_UNITS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Morning_Dose_in_Units = o.value_numeric where o.concept_id = @Morning_Dose_in_Units;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diabetes_Medications = concept_name(o.value_coded, 'en') where o.concept_id = @Diabetes_Medications;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Evening_Dose_in_Units = o.value_numeric where o.concept_id = @Evening_Dose_in_Units;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Noon_Dose_in_Units = o.value_numeric where o.concept_id = @Noon_Dose_in_Units;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PLATELETS = o.value_numeric where o.concept_id = @PLATELETS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LYMPHOCYTES = o.value_numeric where o.concept_id = @LYMPHOCYTES;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NEUTROPHILS = o.value_numeric where o.concept_id = @NEUTROPHILS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Bedtime_Dose_in_Units = o.value_text where o.concept_id = @Bedtime_Dose_in_Units;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RED_BLOOD_CELLS = o.value_numeric where o.concept_id = @RED_BLOOD_CELLS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WHITE_BLOOD_CELLS = o.value_numeric where o.concept_id = @WHITE_BLOOD_CELLS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_UREA_NITROGEN = o.value_numeric where o.concept_id = @BLOOD_UREA_NITROGEN;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ALAT_RESULT = o.value_text where o.concept_id = @ALAT_RESULT;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_Medical_History = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_Medical_History;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.EOSINOPHILS = o.value_numeric where o.concept_id = @EOSINOPHILS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Duration = o.value_numeric where o.concept_id = @Duration;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEMOGLOBIN = o.value_numeric where o.concept_id = @HEMOGLOBIN;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other = o.value_text where o.concept_id = @Other;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.patient_chronic_disease_history = concept_name(o.value_coded, 'en') where o.concept_id = @patient_chronic_disease_history;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TELEPHONE_NUMBER = o.value_text where o.concept_id = @TELEPHONE_NUMBER;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_Contact_Phone_Owner = concept_name(o.value_coded, 'en') where o.concept_id = @Patients_Contact_Phone_Owner;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Care_giver_Phone_Number = o.value_text where o.concept_id = @Family_Care_giver_Phone_Number;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_HEALTH_CARE_PROVIDER = o.value_text where o.concept_id = @NAME_OF_HEALTH_CARE_PROVIDER;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PREVIOUS_MEDICAL_HISTORY = o.value_text where o.concept_id = @PREVIOUS_MEDICAL_HISTORY;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DDB_ECHOCARDIOGRAPH_RESULT = concept_name(o.value_coded, 'en') where o.concept_id = @DDB_ECHOCARDIOGRAPH_RESULT;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.treatment_appoach = concept_name(o.value_coded, 'en') where o.concept_id = @treatment_appoach;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Care_giver_name = o.value_text where o.concept_id = @Family_Care_giver_name;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TOTAL_PROTEIN = o.value_numeric where o.concept_id = @TOTAL_PROTEIN;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_member_suffered_from_Chronic_disease = concept_name(o.value_coded, 'en') where o.concept_id = @Family_member_suffered_from_Chronic_disease;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chronic_Respiratory_diseases = concept_name(o.value_coded, 'en') where o.concept_id = @Chronic_Respiratory_diseases;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Disease_text = o.value_text where o.concept_id = @Other_Disease_text;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ALLERGY_COMMENT = o.value_text where o.concept_id = @ALLERGY_COMMENT;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Member_Chronic_Diseases = concept_name(o.value_coded, 'en') where o.concept_id = @Family_Member_Chronic_Diseases;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ketone = o.value_numeric where o.concept_id = @ketone;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_clinical_diagnosis_non_coded = o.value_text where o.concept_id = @Other_clinical_diagnosis_non_coded;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Hypertension_Stages = concept_name(o.value_coded, 'en') where o.concept_id = @Hypertension_Stages;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BASOPHILS = o.value_numeric where o.concept_id = @BASOPHILS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.X_RAY_CHEST = concept_name(o.value_coded, 'en') where o.concept_id = @X_RAY_CHEST;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Renal_Failure_Stages = concept_name(o.value_coded, 'en') where o.concept_id = @Renal_Failure_Stages;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Diabetes_Drug = o.value_text where o.concept_id = @Other_Diabetes_Drug;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ELECTROCARDIOGRAM_DIAGNOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @ELECTROCARDIOGRAM_DIAGNOSIS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_medical_findings = o.value_text where o.concept_id = @other_medical_findings;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ELECTROCARDIOGRAM_DIAGNOSIS_text = o.value_text where o.concept_id = @ELECTROCARDIOGRAM_DIAGNOSIS_text;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Asthma_medications = concept_name(o.value_coded, 'en') where o.concept_id = @Asthma_medications;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Predicted_Peak_Flow = o.value_numeric where o.concept_id = @Predicted_Peak_Flow;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_before_salbutamol = o.value_numeric where o.concept_id = @Peak_flow_before_salbutamol;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Clinical_diagnosis_for_asthma = concept_name(o.value_coded, 'en') where o.concept_id = @Clinical_diagnosis_for_asthma;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_after_salbutamol = o.value_numeric where o.concept_id = @Peak_flow_after_salbutamol;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ECHOCARDIOGRAM_COMMENT = o.value_text where o.concept_id = @ECHOCARDIOGRAM_COMMENT;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_GENERAL_EXAM_FINDINGS = o.value_text where o.concept_id = @OTHER_GENERAL_EXAM_FINDINGS;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Scar_Location = o.value_text where o.concept_id = @Scar_Location;
update temp_diabetes_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.result_to_other_medical_findings = o.value_text where o.concept_id = @result_to_other_medical_findings;

update temp_diabetes_encounters   set BODY_MASS_INDEX_MEASURED = IF(HEIGHT_CM && WEIGHT_KG , IF(HEIGHT_CM > 3,ROUND(WEIGHT_KG/(HEIGHT_CM/100*HEIGHT_CM/100),1) ,ROUND(WEIGHT_KG/(HEIGHT_CM*HEIGHT_CM),1)) , null);

select * from temp_diabetes_encounters;
