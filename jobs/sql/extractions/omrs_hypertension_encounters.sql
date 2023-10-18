SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
# First create a temporary table to hold the data to export
create temporary table temp_hypertension_encounters (
    PATIENT_ID int,
    ENCOUNTER_ID int,
    FORM text,
    DIASTOLIC_BLOOD_PRESSURE float,
    PULSE float,
    SERUM_CREATININE float,
    Hypertension_Stages text,
    WEIGHT_KG float,
    SYSTOLIC_BLOOD_PRESSURE float,
    Chest_Thorax_Exam_Findings text,
    ABDOMINAL_EXAM_FINDINGS text,
    NEUROLOGICAL_EXAM_FINDINGS text,
    HEENT_EXAM_FINDINGS text,
    Clinican_notes text,
    HEIGHT_CM float,
    Family_Care_givername text,
    LUNG_EXAM_FINDINGS text,
    CURRENT_COMPLAINTS_OR_SYMPTOMS text,
    SERUM_GLUCOSE float,
    UROGENITAL_EXAM_FINDINGS text,
    GENERAL_EXAM_FINDINGS text,
    Other_Disease_text text,
    Diagnosis_or_problem_non_coded text,
    EXTREMITY_EXAM_FINDINGS text,
    TEMPERATURE_C float,
    RESPIRATORY_RATE float,
    ECHOCARDIOGRAM_COMMENT text,
    NCD_Surgery_Typenon_coded text,
    PATIENTS_FLUID_MANAGEMENT text,
    NYHA_CLASS text,
    Compliance text,
    RETURN_VISIT_DATE date,
    COMMENTS_AT_CONCLUSION_OF_EXAMINATION text,
    FAMILY_PLANNING text,
    CARDIAC_EXAM_FINDINGS text,
    MORNING_DOSE_IN_MILLIGRAMS float,
    CARDIAC_MEDICATION text,
    BODY_MASS_INDEX_MEASURED float,
    RESULT_OF_HIV_TEST text,
    Obstestrical text,
    PREVIOUS_MEDICAL_HISTORY text,
    BLOOD_OXYGEN_SATURATION float,
    ALLERGY_TO_DRUG text,
    UBUDEHE_CATEGORY text,
    Surgical_history text,
    Physical_pain_score float,
    Psychological_pain_score text,
    Spiritual_pain_score text,
    Pain_score_comments text,
    MEDICATION_HISTORY text,
    NOON_DOSE_IN_MILLIGRAMS float,
    NIGHT_DOSE_IN_MILLIGRAMS float,
    TIME_UNITS text,
    Duration float,
    TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL text,
    Other text,
    ALLERGY_COMMENT text,
    TOTAL_PROTEIN float,
    DDB_ECHOCARDIOGRAPH_RESULT text,
    treatment_appoach text,
    NAME_OF_HEALTH_CARE_PROVIDER text,
    Chronic_Respiratory_diseases text,
    CHRONIC_CARE_DIAGNOSIS text,
    NAME_OF_REFERRING_SITE text,
    Sensation_in_right_foot float,
    Sensation_in_left_foot float,
    Surgery_Location_non_coded text,
    INTERNATIONAL_NORMALIZED_RATIO float,
    HEMOGLOBIN float,
    MONOCYTES float,
    LYMPHOCYTES float,
    EOSINOPHILS float,
    BASOPHILS float,
    NEUTROPHILS float,
    HEMATOCRIT float,
    PLATELETS float,
    RED_BLOOD_CELLS float,
    BLOOD_UREA_NITROGEN float,
    WHITE_BLOOD_CELLS float,
    CAVITY_SIZE text,
    PERICARDIUM_FINDINGS text,
    SYSTOLIC_FUNCTION text,
    AORTIC_VALVE_STRUCTURE text,
    REGURGITATION text,
    TRICUSPID_VALVE_STRUCTURE text,
    POST_OPERATIVE_VALVE_TYPE text,
    WALL_THICKNESS text,
    LEFT_VENTRICULAR_DIASTOLIC_DIMENSION float,
    POST_OPERATIVE_VALVE_APPEARANCE text,
    PULMONIC_VALVE_STRUCTURE text,
    EJECTION_FRACTION float,
    INFERIOR_VENA_CAVA_SIZE text,
    AORTIC_ROOT_DILATION text,
    INTERVENTRICULAR_SEPTAL_WALL_THICKNESS float,
    LEFT_VENTRICULAR_SYSTOLIC_DIMENSION float,
    INFEROLATERAL_WALL_THICKNESS float,
    AORTA_FINDINGS float,
    ASCENDING_AORTA_STRUCTURE text,
    MAIN_PULMONARY_ARTERY_FINDINGS text,
    Home_Based_Care_Practionner_Phone_Number text,
    Patient_Medical_History text,
    Family_Member_Chronic_Diseases text,
    Family_member_suffered_from_Chronic_disease text,
    Family_Care_giver_Phone_Number text,
    HbA1c float,
    TELEPHONE_NUMBER text,
    Patients_Contact_Phone_Owner text,
    patient_chronic_disease_history text,
    Renal_Failure_Stages text,
    ASAT_RESULT text,
    ALAT_RESULT text,
    SERUM_POTASSIUM float,
    SERUM_SODIUM float,
    RIGHT_ATRIAL_A4C_LENGTH float,
    MITRAL_VALVE_AREA_BY_PLANIMETRY float,
    ESTIMATED_RIGHT_ATRIAL_PRESSURE float,
    Pulmonary_Artery_Systolic_Pressure_Numeric float,
    LEFT_ATRIAL_A4C_LENGTH float,
    PEAK_TRICUSPID_REGURGITANT_GRADIENT float,
    PEAK_GRADIENT_ACROSS_MITRAL_VALVE float,
    mitral_valve_anterior_leaflet_thickness text,
    mitral_valve_posterior_leaflet_thickness text,
    STENOSIS text,
    MITRAL_VALVE_MEAN_GRADIENT float,
    PULMONARY_ARTERY_SYSTOLIC_PRESSURE text,
    PERICARDIAL_EFFUSION text,
    HEART_FAILURE_DIAGNOSIS text,
    OTHER_LAB_TEST_RESULT text,
    OTHER_LAB_TEST_NAME text,
    Location_of_lymphadenopathy text,
    LEAFLET_CALCIFICATION text,
    LEAFLET_THICKENING text,
    LEAFLET_MOBILITY text,
    SUBVALVULAR_THICKENING text,
    CONGENITAL_HEART_DISEASE_TYPE text,
    PDA_PEAK_GRADIENT float,
    OTHER_GENERAL_EXAM_FINDINGS text,
    Other_Cardiovascular_and_chronic_kidney_medication text,
    Type_of_diabetes_diagnosis text,
    other_medical_findings text,
    Breast_Chest_Exam_Findings text,
    MITRAL_VALVE_POSTERIOR_LEAFLET_STRUCTURE text,
    REGURGITANT_VALVE_FINDINGS text,
    X_RAY_CHEST text,
    Other_clinical_diagnosis_non_coded text,
    SIZE_OF_VENTRICULAR_SEPTAL_DEFECT float,
    PEAK_GRADIENT_OF_VENTRICULAR_SEPTAL_DEFECT float,
    VENTRICULAR_FINDINGS text,
    fundoscopy text,
    CREATININE_CLEARANCE float,
    PEAK_GRADIENT_ACROSS_AORTIC_VALVE float,
    VALVE_REPAIR_TYPE text,
    Asthma_medications text,
    Clinical_diagnosis_for_asthma text,
    Diabetes_Medications text,
    ELECTROCARDIOGRAM_DIAGNOSIS text,
    other_HF_HTN_CKD_DRUGS text,
    other_pain_drugs text,
    URINARY_ALBUMIN float,
    drug_prescription_construct float,
    DRUG_FREQUENCY_CODED text,
    Pain_drugs text,
    ketone float,
    dental_care_text text,
    COMORBIDITY_CONFIRMED_OR_PRESUMED text,
    LOCATION_OF_CARDIAC_MURMUR text,
    MITRAL_VALVE_ANTERIOR_LEAFLET_STRUCTURE text,
    Peak_flow_after_salbutamol float,
    Peak_flow_before_salbutamol float,
    ELECTROCARDIOGRAM_DIAGNOSIStext text,
    Morning_Dose_in_Units float,
    Evening_Dose_in_Units float,
    Echocardiography text,
    Facility text,
    Exit_NCD_but_did_not_exit_care text,
    ATRIAL_SEPTAL_DEFECT text,
    ATRIAL_SEPTAL_DEFECT_SIZE float,
    Other_Asthma_drug text,
    result_to_other_medical_findings text,
    ASCITES text,
    Gamma_GT float,
    ABDOMINAL_TENDERNESS text,
    ATRIAL_FINDINGS text,
    AORTIC_VALVE_MEAN_GRADIENT float,
    Glucometer_recommended_for_treatment text,
    Other_Diabetes_Drug text,
    Xrays text,
    TRIGLYCERIDES float,
    TSH float,
    Scar_Location text,
    Aminophyilline_dose_in_milligrams float,
    SERUM_POTASSIUM_mEq_per_L float,
    PEAK_GRADIENT_ACROSS_PULMONIC_VALVE float,
    upper_chest_Exam_Findings text,
    Number_or_days float,
    Other_pulmonary_disease_non_coded text,
    MITRAL_VALVE_PRESSURE_HALF_TIME float
 

);

# Populate the "rows" of this table to contain all hypertension encounters

insert into temp_hypertension_encounters (patient_id, encounter_id,form)
select enc.patient_id, enc.encounter_id,f.name 
from encounter enc
inner join form f on f.form_id=enc.form_id
inner join patient_program pp on pp.patient_id=enc.patient_id
where f.name in 
	(
        "NCD HYPERTENSION: Exit from Care Information","NCD HYPERTENSION: Enrollment form", "NCD HF/HTN/CKD Other Studies",
        "NCD HF/HTN/CKD Medication List","NCD HF/HTN/CKD EXAM LABORATORY TEST", "NCD HF/HTN/CKD Echochardiography", "NCD HF/HTN/CKD Diagnosis and Problem List",
        "NCD HF/HTN/CKD Clinic Visits"
	)
    and enc.voided=0
    and f.retired=0
    and pp.program_id = @hypertensionProgram
;

# Populate the "columns" of this table to contain data for each encounter row

# To optimize performance, first reduce the size of the observations being queried to those non-voided in these encounters
DROP TEMPORARY TABLE IF EXISTS Hypertension_temp_obs;
create temporary table Hypertension_temp_obs
select o.obs_id, o.obs_group_id, o.encounter_id, o.person_id, o.concept_id, o.value_coded, o.value_numeric,
       o.value_text, o.value_datetime, o.value_coded_name_id, o.comments, o.date_created, o.value_drug, o.obs_datetime
from obs o
         inner join temp_hypertension_encounters t on t.encounter_id = o.encounter_id
where o.voided = 0
;

# Add indexes on these for further query performance
create index Hypertension_temp_obs_oi on Hypertension_temp_obs(obs_id);
create index Hypertension_temp_obs_ci1 on Hypertension_temp_obs(encounter_id, concept_id);
create index Hypertension_temp_obs_ci2 on Hypertension_temp_obs(obs_group_id, concept_id);

update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.DIASTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @DIASTOLIC_BLOOD_PRESSURE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PULSE = o.value_numeric where o.concept_id = @PULSE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CREATININE = o.value_numeric where o.concept_id = @SERUM_CREATININE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Hypertension_Stages = concept_name(o.value_coded, 'en') where o.concept_id = @Hypertension_Stages;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.WEIGHT_KG = o.value_numeric where o.concept_id = @WEIGHT_KG;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.SYSTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @SYSTOLIC_BLOOD_PRESSURE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Chest_Thorax_Exam_Findings =  concept_name(o.value_coded, 'en') where o.concept_id = @Chest_Thorax_Exam_Findings;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ABDOMINAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @ABDOMINAL_EXAM_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.NEUROLOGICAL_EXAM_FINDINGS =  concept_name(o.value_coded, 'en') where o.concept_id = @NEUROLOGICAL_EXAM_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.HEENT_EXAM_FINDINGS =  concept_name(o.value_coded, 'en') where o.concept_id = @HEENT_EXAM_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Clinican_notes = o.value_text where o.concept_id = @Clinican_notes;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.HEIGHT_CM = o.value_numeric where o.concept_id = @HEIGHT_CM;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Family_Care_givername = o.value_text where o.concept_id = @Family_Care_givername;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.LUNG_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @LUNG_EXAM_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.CURRENT_COMPLAINTS_OR_SYMPTOMS = o.value_text where o.concept_id = @CURRENT_COMPLAINTS_OR_SYMPTOMS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_GLUCOSE = o.value_numeric where o.concept_id = @SERUM_GLUCOSE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.UROGENITAL_EXAM_FINDINGS =  concept_name(o.value_coded, 'en') where o.concept_id = @UROGENITAL_EXAM_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.GENERAL_EXAM_FINDINGS =  concept_name(o.value_coded, 'en') where o.concept_id = @GENERAL_EXAM_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Other_Disease_text = o.value_text where o.concept_id = @Other_Disease_text;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Diagnosis_or_problem_non_coded = o.value_text where o.concept_id = @Diagnosis_or_problem_non_coded;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.EXTREMITY_EXAM_FINDINGS =  concept_name(o.value_coded, 'en') where o.concept_id = @EXTREMITY_EXAM_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.TEMPERATURE_C = o.value_numeric where o.concept_id = @TEMPERATURE_C;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.RESPIRATORY_RATE = o.value_numeric where o.concept_id = @RESPIRATORY_RATE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ECHOCARDIOGRAM_COMMENT = o.value_text where o.concept_id = @ECHOCARDIOGRAM_COMMENT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.NCD_Surgery_Typenon_coded = o.value_text where o.concept_id = @NCD_Surgery_Typenon_coded;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PATIENTS_FLUID_MANAGEMENT =  concept_name(o.value_coded, 'en') where o.concept_id = @PATIENTS_FLUID_MANAGEMENT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.NYHA_CLASS = concept_name(o.value_coded, 'en') where o.concept_id = @NYHA_CLASS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Compliance =  concept_name(o.value_coded, 'en') where o.concept_id = @Compliance;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.RETURN_VISIT_DATE = o.value_datetime where o.concept_id = @RETURN_VISIT_DATE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.COMMENTS_AT_CONCLUSION_OF_EXAMINATION = o.value_text where o.concept_id = @COMMENTS_AT_CONCLUSION_OF_EXAMINATION;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.FAMILY_PLANNING = concept_name(o.value_coded, 'en') where o.concept_id = @FAMILY_PLANNING;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.CARDIAC_EXAM_FINDINGS =  concept_name(o.value_coded, 'en') where o.concept_id = @CARDIAC_EXAM_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.MORNING_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @MORNING_DOSE_IN_MILLIGRAMS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.CARDIAC_MEDICATION =  concept_name(o.value_coded, 'en') where o.concept_id = @CARDIAC_MEDICATION;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.BODY_MASS_INDEX_MEASURED = o.value_numeric where o.concept_id = @BODY_MASS_INDEX_MEASURED;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.RESULT_OF_HIV_TEST =  concept_name(o.value_coded, 'en') where o.concept_id = @RESULT_OF_HIV_TEST;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Obstestrical = o.value_text where o.concept_id = @Obstestrical;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PREVIOUS_MEDICAL_HISTORY = o.value_text where o.concept_id = @PREVIOUS_MEDICAL_HISTORY;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_OXYGEN_SATURATION = o.value_numeric where o.concept_id = @BLOOD_OXYGEN_SATURATION;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ALLERGY_TO_DRUG =  concept_name(o.value_coded, 'en') where o.concept_id = @ALLERGY_TO_DRUG;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.UBUDEHE_CATEGORY =  concept_name(o.value_coded, 'en') where o.concept_id = @UBUDEHE_CATEGORY;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Surgical_history = o.value_text where o.concept_id = @Surgical_history;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Physical_pain_score = o.value_numeric where o.concept_id = @Physical_pain_score;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Psychological_pain_score =  concept_name(o.value_coded, 'en') where o.concept_id = @Psychological_pain_score;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Spiritual_pain_score =  concept_name(o.value_coded, 'en') where o.concept_id = @Spiritual_pain_score;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Pain_score_comments = o.value_text where o.concept_id = @Pain_score_comments;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.MEDICATION_HISTORY =  concept_name(o.value_coded, 'en') where o.concept_id = @MEDICATION_HISTORY;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.NOON_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @NOON_DOSE_IN_MILLIGRAMS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.NIGHT_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @NIGHT_DOSE_IN_MILLIGRAMS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.TIME_UNITS =  concept_name(o.value_coded, 'en') where o.concept_id = @TIME_UNITS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Duration = o.value_numeric where o.concept_id = @Duration;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL =  concept_name(o.value_coded, 'en') where o.concept_id = @TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Other = o.value_text where o.concept_id = @Other;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ALLERGY_COMMENT = o.value_text where o.concept_id = @ALLERGY_COMMENT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.TOTAL_PROTEIN = o.value_numeric where o.concept_id = @TOTAL_PROTEIN;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.DDB_ECHOCARDIOGRAPH_RESULT =  concept_name(o.value_coded, 'en') where o.concept_id = @DDB_ECHOCARDIOGRAPH_RESULT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.treatment_appoach = concept_name(o.value_coded, 'en') where o.concept_id = @treatment_appoach;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_HEALTH_CARE_PROVIDER = o.value_text where o.concept_id = @NAME_OF_HEALTH_CARE_PROVIDER;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Chronic_Respiratory_diseases =  concept_name(o.value_coded, 'en') where o.concept_id = @Chronic_Respiratory_diseases;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.CHRONIC_CARE_DIAGNOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @CHRONIC_CARE_DIAGNOSIS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_REFERRING_SITE = o.value_text where o.concept_id = @NAME_OF_REFERRING_SITE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Sensation_in_right_foot = o.value_numeric where o.concept_id = @Sensation_in_right_foot;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Sensation_in_left_foot = o.value_numeric where o.concept_id = @Sensation_in_left_foot;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Surgery_Location_non_coded = o.value_text where o.concept_id = @Surgery_Location_non_coded;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.INTERNATIONAL_NORMALIZED_RATIO = o.value_numeric where o.concept_id = @INTERNATIONAL_NORMALIZED_RATIO;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.HEMOGLOBIN = o.value_numeric where o.concept_id = @HEMOGLOBIN;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.MONOCYTES = o.value_numeric where o.concept_id = @MONOCYTES;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.LYMPHOCYTES = o.value_numeric where o.concept_id = @LYMPHOCYTES;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.EOSINOPHILS = o.value_numeric where o.concept_id = @EOSINOPHILS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.BASOPHILS = o.value_numeric where o.concept_id = @BASOPHILS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.NEUTROPHILS = o.value_numeric where o.concept_id = @NEUTROPHILS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.HEMATOCRIT = o.value_numeric where o.concept_id = @HEMATOCRIT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PLATELETS = o.value_numeric where o.concept_id = @PLATELETS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.RED_BLOOD_CELLS = o.value_numeric where o.concept_id = @RED_BLOOD_CELLS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_UREA_NITROGEN = o.value_numeric where o.concept_id = @BLOOD_UREA_NITROGEN;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.WHITE_BLOOD_CELLS = o.value_numeric where o.concept_id = @WHITE_BLOOD_CELLS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.CAVITY_SIZE =  concept_name(o.value_coded, 'en') where o.concept_id = @CAVITY_SIZE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PERICARDIUM_FINDINGS =  concept_name(o.value_coded, 'en') where o.concept_id = @PERICARDIUM_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.SYSTOLIC_FUNCTION =  concept_name(o.value_coded, 'en') where o.concept_id = @SYSTOLIC_FUNCTION;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.AORTIC_VALVE_STRUCTURE =  concept_name(o.value_coded, 'en') where o.concept_id = @AORTIC_VALVE_STRUCTURE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.REGURGITATION =  concept_name(o.value_coded, 'en') where o.concept_id = @REGURGITATION;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.TRICUSPID_VALVE_STRUCTURE =  concept_name(o.value_coded, 'en') where o.concept_id = @TRICUSPID_VALVE_STRUCTURE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.POST_OPERATIVE_VALVE_TYPE =  concept_name(o.value_coded, 'en') where o.concept_id = @POST_OPERATIVE_VALVE_TYPE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.WALL_THICKNESS =  concept_name(o.value_coded, 'en') where o.concept_id = @WALL_THICKNESS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.LEFT_VENTRICULAR_DIASTOLIC_DIMENSION = o.value_numeric where o.concept_id = @LEFT_VENTRICULAR_DIASTOLIC_DIMENSION;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.POST_OPERATIVE_VALVE_APPEARANCE = concept_name(o.value_coded, 'en') where o.concept_id = @POST_OPERATIVE_VALVE_APPEARANCE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PULMONIC_VALVE_STRUCTURE = concept_name(o.value_coded, 'en') where o.concept_id = @PULMONIC_VALVE_STRUCTURE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.EJECTION_FRACTION = o.value_numeric where o.concept_id = @EJECTION_FRACTION;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.INFERIOR_VENA_CAVA_SIZE =  concept_name(o.value_coded, 'en') where o.concept_id = @INFERIOR_VENA_CAVA_SIZE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.AORTIC_ROOT_DILATION =  concept_name(o.value_coded, 'en') where o.concept_id = @AORTIC_ROOT_DILATION;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.INTERVENTRICULAR_SEPTAL_WALL_THICKNESS = o.value_numeric where o.concept_id = @INTERVENTRICULAR_SEPTAL_WALL_THICKNESS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.LEFT_VENTRICULAR_SYSTOLIC_DIMENSION = o.value_numeric where o.concept_id = @LEFT_VENTRICULAR_SYSTOLIC_DIMENSION;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.INFEROLATERAL_WALL_THICKNESS = o.value_numeric where o.concept_id = @INFEROLATERAL_WALL_THICKNESS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.AORTA_FINDINGS = o.value_numeric where o.concept_id = @AORTA_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ASCENDING_AORTA_STRUCTURE =  concept_name(o.value_coded, 'en') where o.concept_id = @ASCENDING_AORTA_STRUCTURE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.MAIN_PULMONARY_ARTERY_FINDINGS =  concept_name(o.value_coded, 'en') where o.concept_id = @MAIN_PULMONARY_ARTERY_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Home_Based_Care_Practionner_Phone_Number = o.value_text where o.concept_id = @Home_Based_Care_Practionner_Phone_Number;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Patient_Medical_History =  concept_name(o.value_coded, 'en') where o.concept_id = @Patient_Medical_History;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Family_Member_Chronic_Diseases =  concept_name(o.value_coded, 'en') where o.concept_id = @Family_Member_Chronic_Diseases;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Family_member_suffered_from_Chronic_disease =  concept_name(o.value_coded, 'en') where o.concept_id = @Family_member_suffered_from_Chronic_disease;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Family_Care_giver_Phone_Number = o.value_text where o.concept_id = @Family_Care_giver_Phone_Number;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.HbA1c = o.value_numeric where o.concept_id = @HbA1c;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.TELEPHONE_NUMBER = o.value_text where o.concept_id = @TELEPHONE_NUMBER;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Patients_Contact_Phone_Owner = concept_name(o.value_coded, 'en') where o.concept_id = @Patients_Contact_Phone_Owner;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.patient_chronic_disease_history = concept_name(o.value_coded, 'en') where o.concept_id = @patient_chronic_disease_history;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Renal_Failure_Stages = concept_name(o.value_coded, 'en') where o.concept_id = @Renal_Failure_Stages;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ASAT_RESULT = o.value_text where o.concept_id = @ASAT_RESULT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ALAT_RESULT = o.value_text where o.concept_id = @ALAT_RESULT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_POTASSIUM = o.value_numeric where o.concept_id = @SERUM_POTASSIUM;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_SODIUM = o.value_numeric where o.concept_id = @SERUM_SODIUM;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.RIGHT_ATRIAL_A4C_LENGTH = o.value_numeric where o.concept_id = @RIGHT_ATRIAL_A4C_LENGTH;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_AREA_BY_PLANIMETRY = o.value_numeric where o.concept_id = @MITRAL_VALVE_AREA_BY_PLANIMETRY;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ESTIMATED_RIGHT_ATRIAL_PRESSURE = o.value_numeric where o.concept_id = @ESTIMATED_RIGHT_ATRIAL_PRESSURE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Pulmonary_Artery_Systolic_Pressure_Numeric = o.value_numeric where o.concept_id = @Pulmonary_Artery_Systolic_Pressure_Numeric;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.LEFT_ATRIAL_A4C_LENGTH = o.value_numeric where o.concept_id = @LEFT_ATRIAL_A4C_LENGTH;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_TRICUSPID_REGURGITANT_GRADIENT = o.value_numeric where o.concept_id = @PEAK_TRICUSPID_REGURGITANT_GRADIENT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_GRADIENT_ACROSS_MITRAL_VALVE = o.value_numeric where o.concept_id = @PEAK_GRADIENT_ACROSS_MITRAL_VALVE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.mitral_valve_anterior_leaflet_thickness =  concept_name(o.value_coded, 'en') where o.concept_id = @mitral_valve_anterior_leaflet_thickness;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.mitral_valve_posterior_leaflet_thickness =  concept_name(o.value_coded, 'en') where o.concept_id = @mitral_valve_posterior_leaflet_thickness;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.STENOSIS =  concept_name(o.value_coded, 'en') where o.concept_id = @STENOSIS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_MEAN_GRADIENT = o.value_numeric where o.concept_id = @MITRAL_VALVE_MEAN_GRADIENT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PULMONARY_ARTERY_SYSTOLIC_PRESSURE =  concept_name(o.value_coded, 'en') where o.concept_id = @PULMONARY_ARTERY_SYSTOLIC_PRESSURE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PERICARDIAL_EFFUSION =  concept_name(o.value_coded, 'en') where o.concept_id = @PERICARDIAL_EFFUSION;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.HEART_FAILURE_DIAGNOSIS =  concept_name(o.value_coded, 'en') where o.concept_id = @HEART_FAILURE_DIAGNOSIS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_RESULT = o.value_text where o.concept_id = @OTHER_LAB_TEST_RESULT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_NAME = o.value_text where o.concept_id = @OTHER_LAB_TEST_NAME;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Location_of_lymphadenopathy = o.value_text where o.concept_id = @Location_of_lymphadenopathy;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.LEAFLET_CALCIFICATION =  concept_name(o.value_coded, 'en') where o.concept_id = @LEAFLET_CALCIFICATION;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.LEAFLET_THICKENING =  concept_name(o.value_coded, 'en') where o.concept_id = @LEAFLET_THICKENING;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.LEAFLET_MOBILITY =  concept_name(o.value_coded, 'en') where o.concept_id = @LEAFLET_MOBILITY;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.SUBVALVULAR_THICKENING =  concept_name(o.value_coded, 'en') where o.concept_id = @SUBVALVULAR_THICKENING;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.CONGENITAL_HEART_DISEASE_TYPE =  concept_name(o.value_coded, 'en') where o.concept_id = @CONGENITAL_HEART_DISEASE_TYPE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PDA_PEAK_GRADIENT = o.value_numeric where o.concept_id = @PDA_PEAK_GRADIENT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_GENERAL_EXAM_FINDINGS = o.value_text where o.concept_id = @OTHER_GENERAL_EXAM_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Other_Cardiovascular_and_chronic_kidney_medication = o.value_text where o.concept_id = @Other_Cardiovascular_and_chronic_kidney_medication;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Type_of_diabetes_diagnosis =  concept_name(o.value_coded, 'en') where o.concept_id = @Type_of_diabetes_diagnosis;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.other_medical_findings = o.value_text where o.concept_id = @other_medical_findings;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Breast_Chest_Exam_Findings =  concept_name(o.value_coded, 'en') where o.concept_id = @Breast_Chest_Exam_Findings;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_POSTERIOR_LEAFLET_STRUCTURE =  concept_name(o.value_coded, 'en') where o.concept_id = @MITRAL_VALVE_POSTERIOR_LEAFLET_STRUCTURE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.REGURGITANT_VALVE_FINDINGS =  concept_name(o.value_coded, 'en') where o.concept_id = @REGURGITANT_VALVE_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.X_RAY_CHEST =  concept_name(o.value_coded, 'en') where o.concept_id = @X_RAY_CHEST;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Other_clinical_diagnosis_non_coded = o.value_text where o.concept_id = @Other_clinical_diagnosis_non_coded;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.SIZE_OF_VENTRICULAR_SEPTAL_DEFECT = o.value_numeric where o.concept_id = @SIZE_OF_VENTRICULAR_SEPTAL_DEFECT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_GRADIENT_OF_VENTRICULAR_SEPTAL_DEFECT = o.value_numeric where o.concept_id = @PEAK_GRADIENT_OF_VENTRICULAR_SEPTAL_DEFECT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.VENTRICULAR_FINDINGS =  concept_name(o.value_coded, 'en') where o.concept_id = @VENTRICULAR_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.fundoscopy = o.value_text where o.concept_id = @fundoscopy;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.CREATININE_CLEARANCE = o.value_numeric where o.concept_id = @CREATININE_CLEARANCE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_GRADIENT_ACROSS_AORTIC_VALVE = o.value_numeric where o.concept_id = @PEAK_GRADIENT_ACROSS_AORTIC_VALVE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.VALVE_REPAIR_TYPE =  concept_name(o.value_coded, 'en') where o.concept_id = @VALVE_REPAIR_TYPE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Asthma_medications =  concept_name(o.value_coded, 'en') where o.concept_id = @Asthma_medications;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Clinical_diagnosis_for_asthma =  concept_name(o.value_coded, 'en') where o.concept_id = @Clinical_diagnosis_for_asthma;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Diabetes_Medications =  concept_name(o.value_coded, 'en') where o.concept_id = @Diabetes_Medications;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ELECTROCARDIOGRAM_DIAGNOSIS =  concept_name(o.value_coded, 'en') where o.concept_id = @ELECTROCARDIOGRAM_DIAGNOSIS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.other_HF_HTN_CKD_DRUGS = o.value_text where o.concept_id = @other_HF_HTN_CKD_DRUGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.other_pain_drugs = o.value_text where o.concept_id = @other_pain_drugs;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.URINARY_ALBUMIN = o.value_numeric where o.concept_id = @URINARY_ALBUMIN;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.drug_prescription_construct = o.value_numeric where o.concept_id = @drug_prescription_construct;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.DRUG_FREQUENCY_CODED =  concept_name(o.value_coded, 'en') where o.concept_id = @DRUG_FREQUENCY_CODED;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Pain_drugs =  concept_name(o.value_coded, 'en') where o.concept_id = @Pain_drugs;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ketone = o.value_numeric where o.concept_id = @ketone;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.dental_care_text = o.value_text where o.concept_id = @dental_care_text;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.COMORBIDITY_CONFIRMED_OR_PRESUMED =  concept_name(o.value_coded, 'en') where o.concept_id = @C_O_I_OR_C_C_OR_P;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.LOCATION_OF_CARDIAC_MURMUR = o.value_text where o.concept_id = @LOCATION_OF_CARDIAC_MURMUR;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_ANTERIOR_LEAFLET_STRUCTURE =  concept_name(o.value_coded, 'en') where o.concept_id = @MITRAL_VALVE_ANTERIOR_LEAFLET_STRUCTURE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_after_salbutamol = o.value_numeric where o.concept_id = @Peak_flow_after_salbutamol;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_before_salbutamol = o.value_numeric where o.concept_id = @Peak_flow_before_salbutamol;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ELECTROCARDIOGRAM_DIAGNOSIStext = o.value_text where o.concept_id = @ELECTROCARDIOGRAM_DIAGNOSIStext;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Morning_Dose_in_Units = o.value_numeric where o.concept_id = @Morning_Dose_in_Units;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Evening_Dose_in_Units = o.value_numeric where o.concept_id = @Evening_Dose_in_Units;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Echocardiography = o.value_text where o.concept_id = @Echocardiography;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Facility = o.value_text where o.concept_id = @Facility;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Exit_NCD_but_did_not_exit_care =  concept_name(o.value_coded, 'en') where o.concept_id = @Exit_NCD_but_did_not_exit_care;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ATRIAL_SEPTAL_DEFECT =  concept_name(o.value_coded, 'en') where o.concept_id = @ATRIAL_SEPTAL_DEFECT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ATRIAL_SEPTAL_DEFECT_SIZE = o.value_numeric where o.concept_id = @ATRIAL_SEPTAL_DEFECT_SIZE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Other_Asthma_drug = o.value_text where o.concept_id = @Other_Asthma_drug;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.result_to_other_medical_findings = o.value_text where o.concept_id = @result_to_other_medical_findings;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ASCITES =  concept_name(o.value_coded, 'en') where o.concept_id = @ASCITES;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Gamma_GT = o.value_numeric where o.concept_id = @Gamma_GT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ABDOMINAL_TENDERNESS =  concept_name(o.value_coded, 'en') where o.concept_id = @ABDOMINAL_TENDERNESS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.ATRIAL_FINDINGS =  concept_name(o.value_coded, 'en') where o.concept_id = @ATRIAL_FINDINGS;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.AORTIC_VALVE_MEAN_GRADIENT = o.value_numeric where o.concept_id = @AORTIC_VALVE_MEAN_GRADIENT;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Glucometer_recommended_for_treatment =  concept_name(o.value_coded, 'en') where o.concept_id = @Glucometer_recommended_for_treatment;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Other_Diabetes_Drug = o.value_text where o.concept_id = @Other_Diabetes_Drug;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Xrays = o.value_text where o.concept_id = @Xrays;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.TRIGLYCERIDES = o.value_numeric where o.concept_id = @TRIGLYCERIDES;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.TSH = o.value_numeric where o.concept_id = @TSH;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Scar_Location = o.value_text where o.concept_id = @Scar_Location;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Aminophyilline_dose_in_milligrams = o.value_numeric where o.concept_id = @Aminophyilline_dose_in_milligrams;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_POTASSIUM_mEq_per_L = o.value_numeric where o.concept_id = @SERUM_POTASSIUM_mEq_per_L;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_GRADIENT_ACROSS_PULMONIC_VALVE = o.value_numeric where o.concept_id = @PEAK_GRADIENT_ACROSS_PULMONIC_VALVE;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.upper_chest_Exam_Findings = concept_name(o.value_coded, 'en') where o.concept_id = @upper_chest_Exam_Findings;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Number_or_days = o.value_numeric where o.concept_id = @Number_or_days;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.Other_pulmonary_disease_non_coded = o.value_text where o.concept_id = @Other_pulmonary_disease_non_coded;
update temp_hypertension_encounters e inner join Hypertension_temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_PRESSURE_HALF_TIME = o.value_numeric where o.concept_id = @MITRAL_VALVE_PRESSURE_HALF_TIME;

update temp_hypertension_encounters   set BODY_MASS_INDEX_MEASURED = IF(HEIGHT_CM && WEIGHT_KG , IF(HEIGHT_CM > 3,ROUND(WEIGHT_KG/(HEIGHT_CM/100*HEIGHT_CM/100),1) ,ROUND(WEIGHT_KG/(HEIGHT_CM*HEIGHT_CM),1)) , null);

select * from temp_hypertension_encounters;