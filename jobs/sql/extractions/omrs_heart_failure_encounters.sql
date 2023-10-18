SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
# First create a temporary table to hold the data to export
create temporary table temp_heart_failure_encounters (
    PATIENT_ID int,
    ENCOUNTER_ID int,
    FORM text,
    Facility text,
    PULSE float,
    SYSTOLIC_BLOOD_PRESSURE float,
    RETURN_VISIT_DATE date,
    DIASTOLIC_BLOOD_PRESSURE float,
    SERUM_SODIUM float,
    WEIGHT_KG float,
    SERUM_POTASSIUM_mEq_per_L float,
    SERUM_CREATININE float,
    TEMPERATURE_C float,
    Compliance text,
    NYHA_CLASS text,
    PATIENTS_FLUID_MANAGEMENT text,
    AORTIC_VALVE_STRUCTURE text,
    CAVITY_SIZE text,
    PEAK_TRICUSPID_REGURGITANT_GRADIENT float,
    INFERIOR_VENA_CAVA_SIZE text,
    LEFT_VENTRICULAR_DIASTOLIC_DIMENSION float,
    REGURGITATION text,
    TRICUSPID_VALVE_STRUCTURE text,
    SYSTOLIC_FUNCTION text,
    mitral_valve_anterior_leaflet_thickness text,
    PERICARDIUM_FINDINGS text,
    mitral_valve_posterior_leaflet_thickness text,
    MAIN_PULMONARY_ARTERY_FINDINGS text,
    Diagnosis_or_problem_non_coded text,
    COMMENTS_AT_CONCLUSION_OF_EXAMINATION text,
    EJECTION_FRACTION float,
    INFEROLATERAL_WALL_THICKNESS float,
    LEFT_VENTRICULAR_SYSTOLIC_DIMENSION float,
    INTERVENTRICULAR_SEPTAL_WALL_THICKNESS float,
    PERICARDIAL_EFFUSION text,
    AORTIC_ROOT_DILATION text,
    PDA_PEAK_GRADIENT float,
    AORTA_FINDINGS float,
    ASCENDING_AORTA_STRUCTURE text,
    WALL_THICKNESS text,
    PULMONARY_ARTERY_SYSTOLIC_PRESSURE text,
    CONGENITAL_HEART_DISEASE_TYPE text,
    VENTRICULAR_FINDINGS text,
    PULMONIC_VALVE_STRUCTURE text,
    ATRIAL_SEPTAL_DEFECT text,
    ESTIMATED_RIGHT_ATRIAL_PRESSURE float,
    ATRIAL_SEPTAL_DEFECT_SIZE float,
    Pulmonary_Artery_Systolic_Pressure_Numeric float,
    PEAK_GRADIENT_ACROSS_PULMONIC_VALVE float,
    LUNG_EXAM_FINDINGS text,
    TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL text,
    CARDIAC_MEDICATION text,
    EXTREMITY_EXAM_FINDINGS text,
    ABDOMINAL_EXAM_FINDINGS text,
    HEENT_EXAM_FINDINGS text,
    CARDIAC_EXAM_FINDINGS text,
    upper_chest_Exam_Findings text,
    UROGENITAL_EXAM_FINDINGS text,
    Type_of_diabetes_diagnosis text,
    NAME_OF_HEALTH_CARE_PROVIDER text,
    CHRONIC_CARE_DIAGNOSIS text,
    GENERAL_EXAM_FINDINGS text,
    DDB_ECHOCARDIOGRAPH_RESULT text,
    NEUROLOGICAL_EXAM_FINDINGS text,
    INTERNATIONAL_NORMALIZED_RATIO float,
    Family_Care_giver_name text,
    RESPIRATORY_RATE float,
    Family_Care_giver_Phone_Number text,
    CURRENT_COMPLAINTS_OR_SYMPTOMS text,
    Duration float,
    TIME_UNITS text,
    Hypertension_Stages text,
    FAMILY_PLANNING text,
    HEMOGLOBIN float,
    SERUM_CARBON_DIOXIDE float,
    ECHOCARDIOGRAM_COMMENT text,
    VSD_restrictive text,
    Pain_score_comments text,
    STENOSIS text,
    MORNING_DOSE_IN_MILLIGRAMS float,
    Family_member_suffered_from_Chronic_disease text,
    ALLERGY_TO_DRUG text,
    BLOOD_UREA_NITROGEN float,
    UBUDEHE_CATEGORY text,
    patient_chronic_disease_history text,
    PREVIOUS_MEDICAL_HISTORY text,
    MEDICATION_HISTORY text,
    BODY_MASS_INDEX_MEASURED float,
    TELEPHONE_NUMBER text,
    Family_Member_Chronic_Diseases text,
    Patient_s_Contact_Phone_Owner text,
    Clinican_notes text,
    HEIGHT_CM float,
    SERUM_GLUCOSE float,
    treatment_appoach text,
    Other text,
    RESULT_OF_HIV_TEST text,
    NIGHT_DOSE_IN_MILLIGRAMS float,
    COMORBIDITY_CONFIRMED_OR_PRESUMED text,
    Other_Cardiovascular_and_chronic_kidney_medication text,
    Obstestrical text,
    Surgical_history text,
    BLOOD_OXYGEN_SATURATION float,
    SERUM_CALCIUM float,
    NOON_DOSE_IN_MILLIGRAMS float,
    Patient_Medical_History text,
    TOTAL_PROTEIN float,
    ALLERGY_COMMENT text,
    Psychological_pain_score text,
    Spiritual_pain_score text,
    Physical_pain_score float,
    PEAK_GRADIENT_ACROSS_AORTIC_VALVE float,
    HEART_FAILURE_DIAGNOSIS text,
    MITRAL_VALVE_MEAN_GRADIENT float,
    PEAK_GRADIENT_ACROSS_MITRAL_VALVE float,
    NAME_OF_REFERRING_SITE text,
    Sensation_in_right_foot float,
    Sensation_in_left_foot float,
    Other_Disease_text text,
    POST_OPERATIVE_VALVE_TYPE text,
    VALVE_REPAIR_TYPE text,
    POST_OPERATIVE_VALVE_APPEARANCE text,
    other_pain_drugs text,
    OTHER_LAB_TEST_RESULT text,
    OTHER_LAB_TEST_NAME text,
    other_medical_findings text,
    Renal_Failure_Stages text,
    ALAT_RESULT text,
    ASAT_RESULT text,
    Clinical_diagnosis_for_asthma text,
    Asthma_medications text,
    Other_Asthma_drug text,
    REGURGITANT_VALVE_FINDINGS text,
    LEFT_ATRIAL_A4C_LENGTH float,
    RIGHT_ATRIAL_A4C_LENGTH float,
    Diabetes_Medications text,
    ketone float,
    HbA1c float,
    Peak_flow_before_salbutamol float,
    Peak_flow_after_salbutamol float,
    Predicted_Peak_Flow float,
    MITRAL_VALVE_AREA_BY_PLANIMETRY float,
    MITRAL_VALVE_ANTERIOR_LEAFLET_STRUCTURE text,
    LEAFLET_CALCIFICATION text,
    NCD_Surgery_Typenon_coded text,
    Surgery_Location_non_coded text,
    PLATELETS float,
    MAIN_PULMONARY_ARTERY_SIZE float,
    HEMATOCRIT float,
    OTHER_GENERAL_EXAM_FINDINGS text,
    WHITE_BLOOD_CELLS float,
    Home_Based_Care_Practionner_Phone_Number text,
    LYMPHOCYTES float,
    MONOCYTES float,
    NEUTROPHILS float,
    RED_BLOOD_CELLS float,
    EOSINOPHILS float,
    BASOPHILS float,
    TRIGLYCERIDES float,
    AORTIC_VALVE_MEAN_GRADIENT float,
    Doxycycline_Dose_in_milligrams float,
    Number_or_days float,
    Gamma_GT float,
    fundoscopy text,
    Breast_Chest_Exam_Findings text,
    Other_clinical_diagnosis_non_coded text,
    result_to_other_medical_findings text,
    Evening_Dose_in_Units float,
    other_HF_HTN_CKD_DRUGS text,
    SUBVALVULAR_THICKENING text,
    LEAFLET_MOBILITY text,
    LEAFLET_THICKENING text,
    TOTAL_CHOLESTEROL float,
    Other_pulmonary_disease_non_coded text,
    drug_prescription_construct float,
    Pain_drugs text,
    MITRAL_VALVE_PRESSURE_HALF_TIME float,
    Chest_Thorax_Exam_Findings text,
    MITRAL_VALVE_POSTERIOR_LEAFLET_STRUCTURE text,
    LOCATION_OF_CARDIAC_MURMUR text,
    SIZE_OF_VENTRICULAR_SEPTAL_DEFECT float,
    PEAK_GRADIENT_OF_VENTRICULAR_SEPTAL_DEFECT float,
    CREATININE_CLEARANCE float,
    X_RAY_CHEST text,
    URINARY_ALBUMIN float,
    DRUG_FREQUENCY_CODED text,
    Chronic_Respiratory_diseases text,
    ELECTROCARDIOGRAM_DIAGNOSIS text,
    dental_care_text text,
    ELECTROCARDIOGRAM_DIAGNOSIS_text text,
    Echocardiography text,
    Xrays text,
    ASCITES text,
    ATRIAL_FINDINGS text,
    TSH float,
    AORTIC_VALVE_PRESSURE_HALF_TIME float

);


# Populate the "rows" of this table to contain all heart failure encounters

insert into temp_heart_failure_encounters (patient_id, encounter_id,form)
select enc.patient_id, enc.encounter_id,f.name 
from encounter enc
inner join form f on f.form_id=enc.form_id
inner join patient_program pp on pp.patient_id=enc.patient_id
where f.name in 
	(
		"NCD HEART FAILURE Exit From Care Information","NCD HEART FAILURE: Enrollment form", "NCD HF/HTN/CKD Other Studies",
        "NCD HF/HTN/CKD Medication List","NCD HF/HTN/CKD EXAM LABORATORY TEST", "NCD HF/HTN/CKD Echochardiography", "NCD HF/HTN/CKD Diagnosis and Problem List",
        "NCD HF/HTN/CKD Clinic Visits"   
	)
    and enc.voided=0
    and f.retired=0
    and pp.program_id = @heartFailureProgram
;

# Populate the "columns" of this table to contain data for each encounter row

# To optimize performance, first reduce the size of the observations being queried to those non-voided in these encounters
DROP TEMPORARY TABLE IF EXISTS heart_failure_temp_obs;
create temporary table heart_failure_temp_obs
select o.obs_id, o.obs_group_id, o.encounter_id, o.person_id, o.concept_id, o.value_coded, o.value_numeric,
       o.value_text, o.value_datetime, o.value_coded_name_id, o.comments, o.date_created, o.value_drug, o.obs_datetime
from obs o
         inner join temp_heart_failure_encounters t on t.encounter_id = o.encounter_id
where o.voided = 0
;

# Add indexes on these for further query performance
create index heart_failure_temp_obs_oi on heart_failure_temp_obs(obs_id);
create index heart_failure_temp_obs_ci1 on heart_failure_temp_obs(encounter_id, concept_id);
create index heart_failure_temp_obs_ci2 on heart_failure_temp_obs(obs_group_id, concept_id);


update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Facility = o.value_text where o.concept_id = @Facility;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PULSE = o.value_numeric where o.concept_id = @PULSE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.SYSTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @SYSTOLIC_BLOOD_PRESSURE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.RETURN_VISIT_DATE = o.value_datetime where o.concept_id = @RETURN_VISIT_DATE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.DIASTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @DIASTOLIC_BLOOD_PRESSURE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_SODIUM = o.value_numeric where o.concept_id = @SERUM_SODIUM;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.WEIGHT_KG = o.value_numeric where o.concept_id = @WEIGHT_KG;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_POTASSIUM_mEq_per_L = o.value_numeric where o.concept_id = @SERUM_POTASSIUM_mEq_per_L;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CREATININE = o.value_numeric where o.concept_id = @SERUM_CREATININE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.TEMPERATURE_C = o.value_numeric where o.concept_id = @TEMPERATURE_C;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Compliance = concept_name(o.value_coded, 'en') where o.concept_id = @Compliance;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.NYHA_CLASS = concept_name(o.value_coded, 'en') where o.concept_id = @NYHA_CLASS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PATIENTS_FLUID_MANAGEMENT = concept_name(o.value_coded, 'en') where o.concept_id = @PATIENTS_FLUID_MANAGEMENT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.AORTIC_VALVE_STRUCTURE = concept_name(o.value_coded, 'en') where o.concept_id = @AORTIC_VALVE_STRUCTURE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.CAVITY_SIZE = concept_name(o.value_coded, 'en') where o.concept_id = @CAVITY_SIZE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_TRICUSPID_REGURGITANT_GRADIENT = o.value_numeric where o.concept_id = @PEAK_TRICUSPID_REGURGITANT_GRADIENT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.INFERIOR_VENA_CAVA_SIZE = concept_name(o.value_coded, 'en') where o.concept_id = @INFERIOR_VENA_CAVA_SIZE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.LEFT_VENTRICULAR_DIASTOLIC_DIMENSION = o.value_numeric where o.concept_id = @LEFT_VENTRICULAR_DIASTOLIC_DIMENSION;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.REGURGITATION = concept_name(o.value_coded, 'en') where o.concept_id = @REGURGITATION;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.TRICUSPID_VALVE_STRUCTURE = concept_name(o.value_coded, 'en') where o.concept_id = @TRICUSPID_VALVE_STRUCTURE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.SYSTOLIC_FUNCTION = concept_name(o.value_coded, 'en') where o.concept_id = @SYSTOLIC_FUNCTION;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.mitral_valve_anterior_leaflet_thickness = concept_name(o.value_coded, 'en') where o.concept_id = @mitral_valve_anterior_leaflet_thickness;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PERICARDIUM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @PERICARDIUM_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.mitral_valve_posterior_leaflet_thickness = concept_name(o.value_coded, 'en') where o.concept_id = @mitral_valve_posterior_leaflet_thickness;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.MAIN_PULMONARY_ARTERY_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @MAIN_PULMONARY_ARTERY_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Diagnosis_or_problem_non_coded = o.value_text where o.concept_id = @Diagnosis_or_problem_non_coded;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.COMMENTS_AT_CONCLUSION_OF_EXAMINATION = o.value_text where o.concept_id = @COMMENTS_AT_CONCLUSION_OF_EXAMINATION;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.EJECTION_FRACTION = o.value_numeric where o.concept_id = @EJECTION_FRACTION;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.INFEROLATERAL_WALL_THICKNESS = o.value_numeric where o.concept_id = @INFEROLATERAL_WALL_THICKNESS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.LEFT_VENTRICULAR_SYSTOLIC_DIMENSION = o.value_numeric where o.concept_id = @LEFT_VENTRICULAR_SYSTOLIC_DIMENSION;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.INTERVENTRICULAR_SEPTAL_WALL_THICKNESS = o.value_numeric where o.concept_id = @INTERVENTRICULAR_SEPTAL_WALL_THICKNESS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PERICARDIAL_EFFUSION = concept_name(o.value_coded, 'en') where o.concept_id = @PERICARDIAL_EFFUSION;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.AORTIC_ROOT_DILATION = concept_name(o.value_coded, 'en') where o.concept_id = @AORTIC_ROOT_DILATION;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PDA_PEAK_GRADIENT = o.value_numeric where o.concept_id = @PDA_PEAK_GRADIENT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.AORTA_FINDINGS = o.value_numeric where o.concept_id = @AORTA_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ASCENDING_AORTA_STRUCTURE = concept_name(o.value_coded, 'en') where o.concept_id = @ASCENDING_AORTA_STRUCTURE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.WALL_THICKNESS = concept_name(o.value_coded, 'en') where o.concept_id = @WALL_THICKNESS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PULMONARY_ARTERY_SYSTOLIC_PRESSURE = concept_name(o.value_coded, 'en') where o.concept_id = @PULMONARY_ARTERY_SYSTOLIC_PRESSURE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.CONGENITAL_HEART_DISEASE_TYPE = concept_name(o.value_coded, 'en') where o.concept_id = @CONGENITAL_HEART_DISEASE_TYPE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.VENTRICULAR_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @VENTRICULAR_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PULMONIC_VALVE_STRUCTURE = concept_name(o.value_coded, 'en') where o.concept_id = @PULMONIC_VALVE_STRUCTURE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ATRIAL_SEPTAL_DEFECT = concept_name(o.value_coded, 'en') where o.concept_id = @ATRIAL_SEPTAL_DEFECT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ESTIMATED_RIGHT_ATRIAL_PRESSURE = o.value_numeric where o.concept_id = @ESTIMATED_RIGHT_ATRIAL_PRESSURE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ATRIAL_SEPTAL_DEFECT_SIZE = o.value_numeric where o.concept_id = @ATRIAL_SEPTAL_DEFECT_SIZE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Pulmonary_Artery_Systolic_Pressure_Numeric = o.value_numeric where o.concept_id = @Pulmonary_Artery_Systolic_Pressure_Numeric;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_GRADIENT_ACROSS_PULMONIC_VALVE = o.value_numeric where o.concept_id = @PEAK_GRADIENT_ACROSS_PULMONIC_VALVE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.LUNG_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @LUNG_EXAM_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL = concept_name(o.value_coded, 'en') where o.concept_id = @TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.CARDIAC_MEDICATION = concept_name(o.value_coded, 'en') where o.concept_id = @CARDIAC_MEDICATION;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.EXTREMITY_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @EXTREMITY_EXAM_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ABDOMINAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @ABDOMINAL_EXAM_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.HEENT_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @HEENT_EXAM_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.CARDIAC_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @CARDIAC_EXAM_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.upper_chest_Exam_Findings = concept_name(o.value_coded, 'en') where o.concept_id = @upper_chest_Exam_Findings;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.UROGENITAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @UROGENITAL_EXAM_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Type_of_diabetes_diagnosis = concept_name(o.value_coded, 'en') where o.concept_id = @Type_of_diabetes_diagnosis;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_HEALTH_CARE_PROVIDER = o.value_text where o.concept_id = @NAME_OF_HEALTH_CARE_PROVIDER;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.CHRONIC_CARE_DIAGNOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @CHRONIC_CARE_DIAGNOSIS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.GENERAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @GENERAL_EXAM_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.DDB_ECHOCARDIOGRAPH_RESULT = concept_name(o.value_coded, 'en') where o.concept_id = @DDB_ECHOCARDIOGRAPH_RESULT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.NEUROLOGICAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @NEUROLOGICAL_EXAM_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.INTERNATIONAL_NORMALIZED_RATIO = o.value_numeric where o.concept_id = @INTERNATIONAL_NORMALIZED_RATIO;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Family_Care_giver_name = o.value_text where o.concept_id = @Family_Care_giver_name;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.RESPIRATORY_RATE = o.value_numeric where o.concept_id = @RESPIRATORY_RATE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Family_Care_giver_Phone_Number = o.value_text where o.concept_id = @Family_Care_giver_Phone_Number;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.CURRENT_COMPLAINTS_OR_SYMPTOMS = o.value_text where o.concept_id = @CURRENT_COMPLAINTS_OR_SYMPTOMS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Duration = o.value_numeric where o.concept_id = @Duration;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.TIME_UNITS = concept_name(o.value_coded, 'en') where o.concept_id = @TIME_UNITS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Hypertension_Stages = concept_name(o.value_coded, 'en') where o.concept_id = @Hypertension_Stages;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.FAMILY_PLANNING = concept_name(o.value_coded, 'en') where o.concept_id = @FAMILY_PLANNING;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.HEMOGLOBIN = o.value_numeric where o.concept_id = @HEMOGLOBIN;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CARBON_DIOXIDE = o.value_numeric where o.concept_id = @SERUM_CARBON_DIOXIDE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ECHOCARDIOGRAM_COMMENT = o.value_text where o.concept_id = @ECHOCARDIOGRAM_COMMENT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.VSD_restrictive = concept_name(o.value_coded, 'en') where o.concept_id = @VSD_restrictive;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Pain_score_comments = o.value_text where o.concept_id = @Pain_score_comments;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.STENOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @STENOSIS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.MORNING_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @MORNING_DOSE_IN_MILLIGRAMS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Family_member_suffered_from_Chronic_disease = concept_name(o.value_coded, 'en') where o.concept_id = @Family_member_suffered_from_Chronic_disease;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ALLERGY_TO_DRUG = concept_name(o.value_coded, 'en') where o.concept_id = @ALLERGY_TO_DRUG;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_UREA_NITROGEN = o.value_numeric where o.concept_id = @BLOOD_UREA_NITROGEN;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.UBUDEHE_CATEGORY = concept_name(o.value_coded, 'en') where o.concept_id = @UBUDEHE_CATEGORY;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.patient_chronic_disease_history = concept_name(o.value_coded, 'en') where o.concept_id = @patient_chronic_disease_history;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PREVIOUS_MEDICAL_HISTORY = o.value_text where o.concept_id = @PREVIOUS_MEDICAL_HISTORY;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.MEDICATION_HISTORY = concept_name(o.value_coded, 'en') where o.concept_id = @MEDICATION_HISTORY;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.BODY_MASS_INDEX_MEASURED = o.value_numeric where o.concept_id = @BODY_MASS_INDEX_MEASURED;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.TELEPHONE_NUMBER = o.value_text where o.concept_id = @TELEPHONE_NUMBER;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Family_Member_Chronic_Diseases = concept_name(o.value_coded, 'en') where o.concept_id = @Family_Member_Chronic_Diseases;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Patient_s_Contact_Phone_Owner = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_s_Contact_Phone_Owner;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Clinican_notes = o.value_text where o.concept_id = @Clinican_notes;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.HEIGHT_CM = o.value_numeric where o.concept_id = @HEIGHT_CM;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_GLUCOSE = o.value_numeric where o.concept_id = @SERUM_GLUCOSE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.treatment_appoach = concept_name(o.value_coded, 'en') where o.concept_id = @treatment_appoach;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Other = o.value_text where o.concept_id = @Other;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.RESULT_OF_HIV_TEST = concept_name(o.value_coded, 'en') where o.concept_id = @RESULT_OF_HIV_TEST;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.NIGHT_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @NIGHT_DOSE_IN_MILLIGRAMS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.COMORBIDITY_CONFIRMED_OR_PRESUMED = concept_name(o.value_coded, 'en') where o.concept_id = @C_O_I_OR_C_C_OR_P;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Other_Cardiovascular_and_chronic_kidney_medication = o.value_text where o.concept_id = @Other_Cardiovascular_and_chronic_kidney_medication;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Obstestrical = o.value_text where o.concept_id = @Obstestrical;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Surgical_history = o.value_text where o.concept_id = @Surgical_history;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_OXYGEN_SATURATION = o.value_numeric where o.concept_id = @BLOOD_OXYGEN_SATURATION;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CALCIUM = o.value_numeric where o.concept_id = @SERUM_CALCIUM;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.NOON_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @NOON_DOSE_IN_MILLIGRAMS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Patient_Medical_History = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_Medical_History;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.TOTAL_PROTEIN = o.value_numeric where o.concept_id = @TOTAL_PROTEIN;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ALLERGY_COMMENT = o.value_text where o.concept_id = @ALLERGY_COMMENT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Psychological_pain_score = concept_name(o.value_coded, 'en') where o.concept_id = @Psychological_pain_score;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Spiritual_pain_score = concept_name(o.value_coded, 'en') where o.concept_id = @Spiritual_pain_score;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Physical_pain_score = o.value_numeric where o.concept_id = @Physical_pain_score;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_GRADIENT_ACROSS_AORTIC_VALVE = o.value_numeric where o.concept_id = @PEAK_GRADIENT_ACROSS_AORTIC_VALVE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.HEART_FAILURE_DIAGNOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @HEART_FAILURE_DIAGNOSIS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_MEAN_GRADIENT = o.value_numeric where o.concept_id = @MITRAL_VALVE_MEAN_GRADIENT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_GRADIENT_ACROSS_MITRAL_VALVE = o.value_numeric where o.concept_id = @PEAK_GRADIENT_ACROSS_MITRAL_VALVE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_REFERRING_SITE = o.value_text where o.concept_id = @NAME_OF_REFERRING_SITE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Sensation_in_right_foot = o.value_numeric where o.concept_id = @Sensation_in_right_foot;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Sensation_in_left_foot = o.value_numeric where o.concept_id = @Sensation_in_left_foot;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Other_Disease_text = o.value_text where o.concept_id = @Other_Disease_text;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.POST_OPERATIVE_VALVE_TYPE = concept_name(o.value_coded, 'en') where o.concept_id = @POST_OPERATIVE_VALVE_TYPE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.VALVE_REPAIR_TYPE = concept_name(o.value_coded, 'en') where o.concept_id = @VALVE_REPAIR_TYPE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.POST_OPERATIVE_VALVE_APPEARANCE = concept_name(o.value_coded, 'en') where o.concept_id = @POST_OPERATIVE_VALVE_APPEARANCE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.other_pain_drugs = o.value_text where o.concept_id = @other_pain_drugs;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_RESULT = o.value_text where o.concept_id = @OTHER_LAB_TEST_RESULT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_NAME = o.value_text where o.concept_id = @OTHER_LAB_TEST_NAME;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.other_medical_findings = o.value_text where o.concept_id = @other_medical_findings;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Renal_Failure_Stages = concept_name(o.value_coded, 'en') where o.concept_id = @Renal_Failure_Stages;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ALAT_RESULT = o.value_text where o.concept_id = @ALAT_RESULT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ASAT_RESULT = o.value_text where o.concept_id = @ASAT_RESULT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Clinical_diagnosis_for_asthma = concept_name(o.value_coded, 'en') where o.concept_id = @Clinical_diagnosis_for_asthma;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Asthma_medications = concept_name(o.value_coded, 'en') where o.concept_id = @Asthma_medications;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Other_Asthma_drug = o.value_text where o.concept_id = @Other_Asthma_drug;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.REGURGITANT_VALVE_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @REGURGITANT_VALVE_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.LEFT_ATRIAL_A4C_LENGTH = o.value_numeric where o.concept_id = @LEFT_ATRIAL_A4C_LENGTH;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.RIGHT_ATRIAL_A4C_LENGTH = o.value_numeric where o.concept_id = @RIGHT_ATRIAL_A4C_LENGTH;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Diabetes_Medications = concept_name(o.value_coded, 'en') where o.concept_id = @Diabetes_Medications;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ketone = o.value_numeric where o.concept_id = @ketone;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.HbA1c = o.value_numeric where o.concept_id = @HbA1c;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_before_salbutamol = o.value_numeric where o.concept_id = @Peak_flow_before_salbutamol;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_after_salbutamol = o.value_numeric where o.concept_id = @Peak_flow_after_salbutamol;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Predicted_Peak_Flow = o.value_numeric where o.concept_id = @Predicted_Peak_Flow;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_AREA_BY_PLANIMETRY = o.value_numeric where o.concept_id = @MITRAL_VALVE_AREA_BY_PLANIMETRY;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_ANTERIOR_LEAFLET_STRUCTURE = concept_name(o.value_coded, 'en') where o.concept_id = @MITRAL_VALVE_ANTERIOR_LEAFLET_STRUCTURE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.LEAFLET_CALCIFICATION = concept_name(o.value_coded, 'en') where o.concept_id = @LEAFLET_CALCIFICATION;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.NCD_Surgery_Typenon_coded = o.value_text where o.concept_id = @NCD_Surgery_Typenon_coded;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Surgery_Location_non_coded = o.value_text where o.concept_id = @Surgery_Location_non_coded;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PLATELETS = o.value_numeric where o.concept_id = @PLATELETS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.MAIN_PULMONARY_ARTERY_SIZE = o.value_numeric where o.concept_id = @MAIN_PULMONARY_ARTERY_SIZE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.HEMATOCRIT = o.value_numeric where o.concept_id = @HEMATOCRIT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_GENERAL_EXAM_FINDINGS = o.value_text where o.concept_id = @OTHER_GENERAL_EXAM_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.WHITE_BLOOD_CELLS = o.value_numeric where o.concept_id = @WHITE_BLOOD_CELLS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Home_Based_Care_Practionner_Phone_Number = o.value_text where o.concept_id = @Home_Based_Care_Practionner_Phone_Number;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.LYMPHOCYTES = o.value_numeric where o.concept_id = @LYMPHOCYTES;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.MONOCYTES = o.value_numeric where o.concept_id = @MONOCYTES;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.NEUTROPHILS = o.value_numeric where o.concept_id = @NEUTROPHILS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.RED_BLOOD_CELLS = o.value_numeric where o.concept_id = @RED_BLOOD_CELLS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.EOSINOPHILS = o.value_numeric where o.concept_id = @EOSINOPHILS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.BASOPHILS = o.value_numeric where o.concept_id = @BASOPHILS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.TRIGLYCERIDES = o.value_numeric where o.concept_id = @TRIGLYCERIDES;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.AORTIC_VALVE_MEAN_GRADIENT = o.value_numeric where o.concept_id = @AORTIC_VALVE_MEAN_GRADIENT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Doxycycline_Dose_in_milligrams = o.value_numeric where o.concept_id = @Doxycycline_Dose_in_milligrams;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Number_or_days = o.value_numeric where o.concept_id = @Number_or_days;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Gamma_GT = o.value_numeric where o.concept_id = @Gamma_GT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.fundoscopy = o.value_text where o.concept_id = @fundoscopy;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Breast_Chest_Exam_Findings = concept_name(o.value_coded, 'en') where o.concept_id = @Breast_Chest_Exam_Findings;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Other_clinical_diagnosis_non_coded = o.value_text where o.concept_id = @Other_clinical_diagnosis_non_coded;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.result_to_other_medical_findings = o.value_text where o.concept_id = @result_to_other_medical_findings;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Evening_Dose_in_Units = o.value_numeric where o.concept_id = @Evening_Dose_in_Units;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.other_HF_HTN_CKD_DRUGS = o.value_text where o.concept_id = @other_HF_HTN_CKD_DRUGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.SUBVALVULAR_THICKENING = concept_name(o.value_coded, 'en') where o.concept_id = @SUBVALVULAR_THICKENING;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.LEAFLET_MOBILITY = concept_name(o.value_coded, 'en') where o.concept_id = @LEAFLET_MOBILITY;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.LEAFLET_THICKENING = concept_name(o.value_coded, 'en') where o.concept_id = @LEAFLET_THICKENING;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.TOTAL_CHOLESTEROL = o.value_numeric where o.concept_id = @TOTAL_CHOLESTEROL;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Other_pulmonary_disease_non_coded = o.value_text where o.concept_id = @Other_pulmonary_disease_non_coded;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.drug_prescription_construct = o.value_numeric where o.concept_id = @drug_prescription_construct;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Pain_drugs = concept_name(o.value_coded, 'en') where o.concept_id = @Pain_drugs;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_PRESSURE_HALF_TIME = o.value_numeric where o.concept_id = @MITRAL_VALVE_PRESSURE_HALF_TIME;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Chest_Thorax_Exam_Findings = concept_name(o.value_coded, 'en') where o.concept_id = @Chest_Thorax_Exam_Findings;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_POSTERIOR_LEAFLET_STRUCTURE = concept_name(o.value_coded, 'en') where o.concept_id = @MITRAL_VALVE_POSTERIOR_LEAFLET_STRUCTURE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.LOCATION_OF_CARDIAC_MURMUR = o.value_text where o.concept_id = @LOCATION_OF_CARDIAC_MURMUR;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.SIZE_OF_VENTRICULAR_SEPTAL_DEFECT = o.value_numeric where o.concept_id = @SIZE_OF_VENTRICULAR_SEPTAL_DEFECT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_GRADIENT_OF_VENTRICULAR_SEPTAL_DEFECT = o.value_numeric where o.concept_id = @PEAK_GRADIENT_OF_VENTRICULAR_SEPTAL_DEFECT;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.CREATININE_CLEARANCE = o.value_numeric where o.concept_id = @CREATININE_CLEARANCE;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.X_RAY_CHEST = concept_name(o.value_coded, 'en') where o.concept_id = @X_RAY_CHEST;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.URINARY_ALBUMIN = o.value_numeric where o.concept_id = @URINARY_ALBUMIN;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.DRUG_FREQUENCY_CODED = concept_name(o.value_coded, 'en') where o.concept_id = @DRUG_FREQUENCY_CODED;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Chronic_Respiratory_diseases = concept_name(o.value_coded, 'en') where o.concept_id = @Chronic_Respiratory_diseases;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ELECTROCARDIOGRAM_DIAGNOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @ELECTROCARDIOGRAM_DIAGNOSIS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.dental_care_text = o.value_text where o.concept_id = @dental_care_text;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ELECTROCARDIOGRAM_DIAGNOSIS_text = o.value_text where o.concept_id = @ELECTROCARDIOGRAM_DIAGNOSIS_text;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Echocardiography = o.value_text where o.concept_id = @Echocardiography;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.Xrays = o.value_text where o.concept_id = @Xrays;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ASCITES = concept_name(o.value_coded, 'en') where o.concept_id = @ASCITES;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.ATRIAL_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @ATRIAL_FINDINGS;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.TSH = o.value_numeric where o.concept_id = @TSH;
update temp_heart_failure_encounters e inner join heart_failure_temp_obs o on e.encounter_id = o.encounter_id set e.AORTIC_VALVE_PRESSURE_HALF_TIME = o.value_numeric where o.concept_id = @AORTIC_VALVE_PRESSURE_HALF_TIME;

update temp_heart_failure_encounters   set BODY_MASS_INDEX_MEASURED = IF(HEIGHT_CM && WEIGHT_KG , IF(HEIGHT_CM > 3,ROUND(WEIGHT_KG/(HEIGHT_CM/100*HEIGHT_CM/100),1) ,ROUND(WEIGHT_KG/(HEIGHT_CM*HEIGHT_CM),1)) , null);

select * from temp_heart_failure_encounters;