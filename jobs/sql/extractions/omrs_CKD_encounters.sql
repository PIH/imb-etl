# First create a temporary table to hold the data to export
create temporary table temp_CKD_encounters (
    PATIENT_ID int,
    ENCOUNTER_ID int,
    FORM text,
    ENCOUNTER_DATE date,
    Diagnosis_or_problem_non_coded text,
    NCD_Surgery_Typenon_coded text,
    TEMPERATURE_C float,
    DIASTOLIC_BLOOD_PRESSURE float,
    PATIENTS_FLUID_MANAGEMENT text,
    NYHA_CLASS text,
    PULSE float,
    Compliance text,
    WEIGHT_KG float,
    SYSTOLIC_BLOOD_PRESSURE float,
    RETURN_VISIT_DATE date,
    SERUM_CREATININE float,
    COMMENTS_AT_CONCLUSION_OF_EXAMINATION text,
    FAMILY_PLANNING text,
    Physical_pain_score float,
    Psychological_pain_score text,
    Spiritual_pain_score text,
    Pain_score_comments text,
    Surgery_Location_non_coded text,
    INTERNATIONAL_NORMALIZED_RATIO float,
    HEMOGLOBIN float,
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
    ECHOCARDIOGRAM_COMMENT text,
    OTHER_LAB_TEST_RESULT text,
    OTHER_LAB_TEST_NAME text,
    LEAFLET_CALCIFICATION text,
    LEAFLET_THICKENING text,
    LEAFLET_MOBILITY text,
    SUBVALVULAR_THICKENING text,
    CONGENITAL_HEART_DISEASE_TYPE text,
    PDA_PEAK_GRADIENT float,
    MITRAL_VALVE_POSTERIOR_LEAFLET_STRUCTURE text,
    REGURGITANT_VALVE_FINDINGS text,
    SIZE_OF_VENTRICULAR_SEPTAL_DEFECT float,
    PEAK_GRADIENT_OF_VENTRICULAR_SEPTAL_DEFECT float,
    VENTRICULAR_FINDINGS text,
    CREATININE_CLEARANCE float,
    PEAK_GRADIENT_ACROSS_AORTIC_VALVE float,
    VALVE_REPAIR_TYPE text,
    other_HF_HTN_CKD_DRUGS text,
    other_pain_drugs text,
    HEENT_EXAM_FINDINGS text,
    RESPIRATORY_RATE float,
    Surgicalhistory text,
    EXTREMITY_EXAM_FINDINGS text,
    Chest_Thorax_Exam_Findings text,
    UROGENITAL_EXAM_FINDINGS text,
    CURRENT_COMPLAINTS_OR_SYMPTOMS text,
    Clinican_notes text,
    ABDOMINAL_EXAM_FINDINGS text,
    treatment_appoach text,
    UBUDEHE_CATEGORY text,
    Hypertension_Stages text,
    ALLERGY_TO_DRUG text,
    CHRONIC_CARE_DIAGNOSIS text,
    PREVIOUS_MEDICAL_HISTORY text,
    GENERAL_EXAM_FINDINGS text,
    Obstestrical text,
    NEUROLOGICAL_EXAM_FINDINGS text,
    LUNG_EXAM_FINDINGS text,
    CARDIAC_EXAM_FINDINGS text,
    HEIGHT_CM float,
    URINARY_ALBUMIN float,
    DRUG_FREQUENCY_CODED text,
    drug_prescription_construct float,
    Pain_drugs text,
    dental_care_text text,
    MITRAL_VALVE_ANTERIOR_LEAFLET_STRUCTURE text,
    ELECTROCARDIOGRAM_DIAGNOSIStext text,
    CARDIAC_MEDICATION text,
    MORNING_DOSE_IN_MILLIGRAMS float,
    NAME_OF_HEALTH_CARE_PROVIDER text,
    TIME_UNITS text,
    Duration float,
    NIGHT_DOSE_IN_MILLIGRAMS float,
    TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL text,
    Other text,
    BLOOD_OXYGEN_SATURATION float,
    Renal_Failure_Stages text,
    TOTAL_PROTEIN float,
    Family_Care_givername text,
    TELEPHONE_NUMBER text,
    Family_Care_giver_Phone_Number text,
    PLATELETS float,
    LYMPHOCYTES float,
    patient_chronic_disease_history text,
    Family_Member_Chronic_Diseases text,
    MEDICATION_HISTORY text,
    HEMATOCRIT float,
    Patient_s_Contact_Phone_Owner text,
    Echocardiography text,
    NOON_DOSE_IN_MILLIGRAMS float,
    Family_member_suffered_from_Chronic_disease text,
    DDB_ECHOCARDIOGRAPH_RESULT text,
    Patient_Medical_History text,
    ATRIAL_SEPTAL_DEFECT text,
    ATRIAL_SEPTAL_DEFECT_SIZE float,
    ASCITES text,
    RESULT_OF_HIV_TEST text,
    NEUTROPHILS float,
    MONOCYTES float,
    SERUM_GLUCOSE float,
    ASAT_RESULT text,
    ALAT_RESULT text,
    BLOOD_UREA_NITROGEN float,
    other_medical_findings text,
    ATRIAL_FINDINGS text,
    Exit_NCD_but_did_not_exit_care text,
    AORTIC_VALVE_MEAN_GRADIENT float,
    Facility text,
    Other_Cardiovascular_and_chronic_kidney_medication text,
    TSH float,
    Sensation_in_left_foot float,
    Sensation_in_right_foot float,
    Clinical_diagnosis_for_asthma text,
    Asthma_medications text,
    Type_of_diabetes_diagnosis text,
    Diabetes_Medications text,
    Other_Diseasetext text,
    Chronic_Respiratory_diseases text,
    AORTIC_VALVE_PRESSURE_HALF_TIME float,
    SERUM_POTASSIUM_mEq_L float,
    PEAK_GRADIENT_ACROSS_PULMONIC_VALVE float,
    SERUM_CARBON_DIOXIDE float,
    VSD_restrictive text,
    SERUM_CALCIUM float,
    upper_chest_Exam_Findings text,
    MAIN_PULMONARY_ARTERY_SIZE float,
    HbA1c float,
    BODY_MASS_INDEX_MEASURED float,
    Peak_flow_before_salbutamol float,
    Peak_flow_after_salbutamol float,
    OTHER_GENERAL_EXAM_FINDINGS text,
    MITRAL_VALVE_PRESSURE_HALF_TIME float,
    Other_clinical_diagnosis_non_coded text
);

# Populate the "rows" of this table to contain all CKD encounters

insert into temp_CKD_encounters (patient_id, encounter_id,FORM,ENCOUNTER_DATE)
select enc.patient_id, enc.encounter_id,f.name,enc.encounter_datetime
from encounter enc
inner join form f on f.form_id=enc.form_id
inner join patient_program pp on pp.patient_id=enc.patient_id
where f.name in 
	(
		"NCD CKD: Exit from Care Information","NCD CKD: Enrollment form", "NCD HF/HTN/CKD Other Studies",
        "NCD HF/HTN/CKD Medication List","NCD HF/HTN/CKD EXAM LABORATORY TEST", "NCD HF/HTN/CKD Echochardiography", "NCD HF/HTN/CKD Diagnosis and Problem List",
        "NCD HF/HTN/CKD Clinic Visits"
	)
    and enc.voided=0
    and f.retired=0
    and pp.program_id = @CKD
;


# Populate the "columns" of this table to contain data for each encounter row

# To optimize performance, first reduce the size of the observations being queried to those non-voided in these encounters
DROP TEMPORARY TABLE IF EXISTS temp_obs;
create temporary table temp_obs
select o.obs_id, o.obs_group_id, o.encounter_id, o.person_id, o.concept_id, o.value_coded, o.value_numeric,
       o.value_text, o.value_datetime, o.value_coded_name_id, o.comments, o.date_created, o.value_drug, o.obs_datetime
from obs o
         inner join temp_CKD_encounters t on t.encounter_id = o.encounter_id
where o.voided = 0
;

# Add indexes on these for further query performance
create index temp_obs_oi on temp_obs(obs_id);
create index temp_obs_ci1 on temp_obs(encounter_id, concept_id);
create index temp_obs_ci2 on temp_obs(obs_group_id, concept_id);


update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diagnosis_or_problem_non_coded = o.value_text where o.concept_id = @Diagnosis_or_problem_non_coded;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NCD_Surgery_Typenon_coded = o.value_text where o.concept_id = @NCD_Surgery_Typenon_coded;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TEMPERATURE_C = o.value_numeric where o.concept_id = @TEMPERATURE_C;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DIASTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @DIASTOLIC_BLOOD_PRESSURE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PATIENTS_FLUID_MANAGEMENT = concept_name(o.value_coded, 'en') where o.concept_id = @PATIENTS_FLUID_MANAGEMENT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NYHA_CLASS = concept_name(o.value_coded, 'en') where o.concept_id = @NYHA_CLASS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PULSE = o.value_numeric where o.concept_id = @PULSE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Compliance = concept_name(o.value_coded, 'en') where o.concept_id = @Compliance;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WEIGHT_KG = o.value_numeric where o.concept_id = @WEIGHT_KG;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SYSTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @SYSTOLIC_BLOOD_PRESSURE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RETURN_VISIT_DATE = o.value_datetime where o.concept_id = @RETURN_VISIT_DATE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CREATININE = o.value_numeric where o.concept_id = @SERUM_CREATININE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.COMMENTS_AT_CONCLUSION_OF_EXAMINATION = o.value_text where o.concept_id = @COMMENTS_AT_CONCLUSION_OF_EXAMINATION;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FAMILY_PLANNING = concept_name(o.value_coded, 'en') where o.concept_id = @FAMILY_PLANNING;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Physical_pain_score = o.value_numeric where o.concept_id = @Physical_pain_score;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Psychological_pain_score = concept_name(o.value_coded, 'en') where o.concept_id = @Psychological_pain_score;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Spiritual_pain_score = concept_name(o.value_coded, 'en') where o.concept_id = @Spiritual_pain_score;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pain_score_comments = o.value_text where o.concept_id = @Pain_score_comments;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Surgery_Location_non_coded = o.value_text where o.concept_id = @Surgery_Location_non_coded;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.INTERNATIONAL_NORMALIZED_RATIO = o.value_numeric where o.concept_id = @INTERNATIONAL_NORMALIZED_RATIO;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEMOGLOBIN = o.value_numeric where o.concept_id = @HEMOGLOBIN;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CAVITY_SIZE = concept_name(o.value_coded, 'en') where o.concept_id = @CAVITY_SIZE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PERICARDIUM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @PERICARDIUM_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SYSTOLIC_FUNCTION = concept_name(o.value_coded, 'en') where o.concept_id = @SYSTOLIC_FUNCTION;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.AORTIC_VALVE_STRUCTURE = concept_name(o.value_coded, 'en') where o.concept_id = @AORTIC_VALVE_STRUCTURE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.REGURGITATION = concept_name(o.value_coded, 'en') where o.concept_id = @REGURGITATION;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TRICUSPID_VALVE_STRUCTURE = concept_name(o.value_coded, 'en') where o.concept_id = @TRICUSPID_VALVE_STRUCTURE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.POST_OPERATIVE_VALVE_TYPE = concept_name(o.value_coded, 'en') where o.concept_id = @POST_OPERATIVE_VALVE_TYPE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WALL_THICKNESS = concept_name(o.value_coded, 'en') where o.concept_id = @WALL_THICKNESS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LEFT_VENTRICULAR_DIASTOLIC_DIMENSION = o.value_numeric where o.concept_id = @LEFT_VENTRICULAR_DIASTOLIC_DIMENSION;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.POST_OPERATIVE_VALVE_APPEARANCE = concept_name(o.value_coded, 'en') where o.concept_id = @POST_OPERATIVE_VALVE_APPEARANCE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PULMONIC_VALVE_STRUCTURE = concept_name(o.value_coded, 'en') where o.concept_id = @PULMONIC_VALVE_STRUCTURE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.EJECTION_FRACTION = o.value_numeric where o.concept_id = @EJECTION_FRACTION;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.INFERIOR_VENA_CAVA_SIZE = concept_name(o.value_coded, 'en') where o.concept_id = @INFERIOR_VENA_CAVA_SIZE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.AORTIC_ROOT_DILATION = concept_name(o.value_coded, 'en') where o.concept_id = @AORTIC_ROOT_DILATION;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.INTERVENTRICULAR_SEPTAL_WALL_THICKNESS = o.value_numeric where o.concept_id = @INTERVENTRICULAR_SEPTAL_WALL_THICKNESS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LEFT_VENTRICULAR_SYSTOLIC_DIMENSION = o.value_numeric where o.concept_id = @LEFT_VENTRICULAR_SYSTOLIC_DIMENSION;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.INFEROLATERAL_WALL_THICKNESS = o.value_numeric where o.concept_id = @INFEROLATERAL_WALL_THICKNESS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.AORTA_FINDINGS = o.value_numeric where o.concept_id = @AORTA_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ASCENDING_AORTA_STRUCTURE = concept_name(o.value_coded, 'en') where o.concept_id = @ASCENDING_AORTA_STRUCTURE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MAIN_PULMONARY_ARTERY_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @MAIN_PULMONARY_ARTERY_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_POTASSIUM = o.value_numeric where o.concept_id = @SERUM_POTASSIUM;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_SODIUM = o.value_numeric where o.concept_id = @SERUM_SODIUM;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RIGHT_ATRIAL_A4C_LENGTH = o.value_numeric where o.concept_id = @RIGHT_ATRIAL_A4C_LENGTH;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_AREA_BY_PLANIMETRY = o.value_numeric where o.concept_id = @MITRAL_VALVE_AREA_BY_PLANIMETRY;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ESTIMATED_RIGHT_ATRIAL_PRESSURE = o.value_numeric where o.concept_id = @ESTIMATED_RIGHT_ATRIAL_PRESSURE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pulmonary_Artery_Systolic_Pressure_Numeric = o.value_numeric where o.concept_id = @Pulmonary_Artery_Systolic_Pressure_Numeric;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LEFT_ATRIAL_A4C_LENGTH = o.value_numeric where o.concept_id = @LEFT_ATRIAL_A4C_LENGTH;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_TRICUSPID_REGURGITANT_GRADIENT = o.value_numeric where o.concept_id = @PEAK_TRICUSPID_REGURGITANT_GRADIENT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_GRADIENT_ACROSS_MITRAL_VALVE = o.value_numeric where o.concept_id = @PEAK_GRADIENT_ACROSS_MITRAL_VALVE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.mitral_valve_anterior_leaflet_thickness = concept_name(o.value_coded, 'en') where o.concept_id = @mitral_valve_anterior_leaflet_thickness;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.mitral_valve_posterior_leaflet_thickness = concept_name(o.value_coded, 'en') where o.concept_id = @mitral_valve_posterior_leaflet_thickness;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.STENOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @STENOSIS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_MEAN_GRADIENT = o.value_numeric where o.concept_id = @MITRAL_VALVE_MEAN_GRADIENT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PULMONARY_ARTERY_SYSTOLIC_PRESSURE = concept_name(o.value_coded, 'en') where o.concept_id = @PULMONARY_ARTERY_SYSTOLIC_PRESSURE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PERICARDIAL_EFFUSION = concept_name(o.value_coded, 'en') where o.concept_id = @PERICARDIAL_EFFUSION;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEART_FAILURE_DIAGNOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @HEART_FAILURE_DIAGNOSIS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ECHOCARDIOGRAM_COMMENT = o.value_text where o.concept_id = @ECHOCARDIOGRAM_COMMENT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_RESULT = o.value_text where o.concept_id = @OTHER_LAB_TEST_RESULT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_NAME = o.value_text where o.concept_id = @OTHER_LAB_TEST_NAME;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LEAFLET_CALCIFICATION = concept_name(o.value_coded, 'en') where o.concept_id = @LEAFLET_CALCIFICATION;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LEAFLET_THICKENING = concept_name(o.value_coded, 'en') where o.concept_id = @LEAFLET_THICKENING;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LEAFLET_MOBILITY = concept_name(o.value_coded, 'en') where o.concept_id = @LEAFLET_MOBILITY;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SUBVALVULAR_THICKENING = concept_name(o.value_coded, 'en') where o.concept_id = @SUBVALVULAR_THICKENING;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CONGENITAL_HEART_DISEASE_TYPE = concept_name(o.value_coded, 'en') where o.concept_id = @CONGENITAL_HEART_DISEASE_TYPE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PDA_PEAK_GRADIENT = o.value_numeric where o.concept_id = @PDA_PEAK_GRADIENT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_POSTERIOR_LEAFLET_STRUCTURE = concept_name(o.value_coded, 'en') where o.concept_id = @MITRAL_VALVE_POSTERIOR_LEAFLET_STRUCTURE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.REGURGITANT_VALVE_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @REGURGITANT_VALVE_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SIZE_OF_VENTRICULAR_SEPTAL_DEFECT = o.value_numeric where o.concept_id = @SIZE_OF_VENTRICULAR_SEPTAL_DEFECT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_GRADIENT_OF_VENTRICULAR_SEPTAL_DEFECT = o.value_numeric where o.concept_id = @PEAK_GRADIENT_OF_VENTRICULAR_SEPTAL_DEFECT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.VENTRICULAR_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @VENTRICULAR_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CREATININE_CLEARANCE = o.value_numeric where o.concept_id = @CREATININE_CLEARANCE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_GRADIENT_ACROSS_AORTIC_VALVE = o.value_numeric where o.concept_id = @PEAK_GRADIENT_ACROSS_AORTIC_VALVE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.VALVE_REPAIR_TYPE = concept_name(o.value_coded, 'en') where o.concept_id = @VALVE_REPAIR_TYPE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_HF_HTN_CKD_DRUGS = o.value_text where o.concept_id = @other_HF_HTN_CKD_DRUGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_pain_drugs = o.value_text where o.concept_id = @other_pain_drugs;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEENT_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @HEENT_EXAM_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESPIRATORY_RATE = o.value_numeric where o.concept_id = @RESPIRATORY_RATE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Surgicalhistory = o.value_text where o.concept_id = @Surgicalhistory;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.EXTREMITY_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @EXTREMITY_EXAM_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chest_Thorax_Exam_Findings = concept_name(o.value_coded, 'en') where o.concept_id = @Chest_Thorax_Exam_Findings;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.UROGENITAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @UROGENITAL_EXAM_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CURRENT_COMPLAINTS_OR_SYMPTOMS = o.value_text where o.concept_id = @CURRENT_COMPLAINTS_OR_SYMPTOMS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Clinican_notes = o.value_text where o.concept_id = @Clinican_notes;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ABDOMINAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @ABDOMINAL_EXAM_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.treatment_appoach = concept_name(o.value_coded, 'en') where o.concept_id = @treatment_appoach;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.UBUDEHE_CATEGORY = concept_name(o.value_coded, 'en') where o.concept_id = @UBUDEHE_CATEGORY;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Hypertension_Stages = concept_name(o.value_coded, 'en') where o.concept_id = @Hypertension_Stages;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ALLERGY_TO_DRUG = concept_name(o.value_coded, 'en') where o.concept_id = @ALLERGY_TO_DRUG;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CHRONIC_CARE_DIAGNOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @CHRONIC_CARE_DIAGNOSIS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PREVIOUS_MEDICAL_HISTORY = o.value_text where o.concept_id = @PREVIOUS_MEDICAL_HISTORY;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.GENERAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @GENERAL_EXAM_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Obstestrical = o.value_text where o.concept_id = @Obstestrical;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NEUROLOGICAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @NEUROLOGICAL_EXAM_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LUNG_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @LUNG_EXAM_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CARDIAC_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @CARDIAC_EXAM_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEIGHT_CM = o.value_numeric where o.concept_id = @HEIGHT_CM;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.URINARY_ALBUMIN = o.value_numeric where o.concept_id = @URINARY_ALBUMIN;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DRUG_FREQUENCY_CODED = concept_name(o.value_coded, 'en') where o.concept_id = @DRUG_FREQUENCY_CODED;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.drug_prescription_construct = o.value_numeric where o.concept_id = @drug_prescription_construct;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pain_drugs = concept_name(o.value_coded, 'en') where o.concept_id = @Pain_drugs;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.dental_care_text = o.value_text where o.concept_id = @dental_care_text;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_ANTERIOR_LEAFLET_STRUCTURE = concept_name(o.value_coded, 'en') where o.concept_id = @MITRAL_VALVE_ANTERIOR_LEAFLET_STRUCTURE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ELECTROCARDIOGRAM_DIAGNOSIStext = o.value_text where o.concept_id = @ELECTROCARDIOGRAM_DIAGNOSIStext;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CARDIAC_MEDICATION = concept_name(o.value_coded, 'en') where o.concept_id = @CARDIAC_MEDICATION;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MORNING_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @MORNING_DOSE_IN_MILLIGRAMS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_HEALTH_CARE_PROVIDER = o.value_text where o.concept_id = @NAME_OF_HEALTH_CARE_PROVIDER;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TIME_UNITS = concept_name(o.value_coded, 'en') where o.concept_id = @TIME_UNITS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Duration = o.value_numeric where o.concept_id = @Duration;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NIGHT_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @NIGHT_DOSE_IN_MILLIGRAMS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL = concept_name(o.value_coded, 'en') where o.concept_id = @TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other = o.value_text where o.concept_id = @Other;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_OXYGEN_SATURATION = o.value_numeric where o.concept_id = @BLOOD_OXYGEN_SATURATION;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Renal_Failure_Stages = concept_name(o.value_coded, 'en') where o.concept_id = @Renal_Failure_Stages;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TOTAL_PROTEIN = o.value_numeric where o.concept_id = @TOTAL_PROTEIN;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Care_givername = o.value_text where o.concept_id = @Family_Care_givername;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TELEPHONE_NUMBER = o.value_text where o.concept_id = @TELEPHONE_NUMBER;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Care_giver_Phone_Number = o.value_text where o.concept_id = @Family_Care_giver_Phone_Number;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PLATELETS = o.value_numeric where o.concept_id = @PLATELETS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LYMPHOCYTES = o.value_numeric where o.concept_id = @LYMPHOCYTES;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.patient_chronic_disease_history = concept_name(o.value_coded, 'en') where o.concept_id = @patient_chronic_disease_history;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Member_Chronic_Diseases = concept_name(o.value_coded, 'en') where o.concept_id = @Family_Member_Chronic_Diseases;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MEDICATION_HISTORY = concept_name(o.value_coded, 'en') where o.concept_id = @MEDICATION_HISTORY;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEMATOCRIT = o.value_numeric where o.concept_id = @HEMATOCRIT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_s_Contact_Phone_Owner = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_s_Contact_Phone_Owner;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Echocardiography = o.value_text where o.concept_id = @Echocardiography;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NOON_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @NOON_DOSE_IN_MILLIGRAMS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_member_suffered_from_Chronic_disease = concept_name(o.value_coded, 'en') where o.concept_id = @Family_member_suffered_from_Chronic_disease;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DDB_ECHOCARDIOGRAPH_RESULT = concept_name(o.value_coded, 'en') where o.concept_id = @DDB_ECHOCARDIOGRAPH_RESULT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_Medical_History = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_Medical_History;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ATRIAL_SEPTAL_DEFECT = concept_name(o.value_coded, 'en') where o.concept_id = @ATRIAL_SEPTAL_DEFECT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ATRIAL_SEPTAL_DEFECT_SIZE = o.value_numeric where o.concept_id = @ATRIAL_SEPTAL_DEFECT_SIZE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ASCITES = concept_name(o.value_coded, 'en') where o.concept_id = @ASCITES;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESULT_OF_HIV_TEST = concept_name(o.value_coded, 'en') where o.concept_id = @RESULT_OF_HIV_TEST;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NEUTROPHILS = o.value_numeric where o.concept_id = @NEUTROPHILS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MONOCYTES = o.value_numeric where o.concept_id = @MONOCYTES;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_GLUCOSE = o.value_numeric where o.concept_id = @SERUM_GLUCOSE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ASAT_RESULT = o.value_text where o.concept_id = @ASAT_RESULT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ALAT_RESULT = o.value_text where o.concept_id = @ALAT_RESULT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_UREA_NITROGEN = o.value_numeric where o.concept_id = @BLOOD_UREA_NITROGEN;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_medical_findings = o.value_text where o.concept_id = @other_medical_findings;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ATRIAL_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @ATRIAL_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Exit_NCD_but_did_not_exit_care = concept_name(o.value_coded, 'en') where o.concept_id = @Exit_NCD_but_did_not_exit_care;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.AORTIC_VALVE_MEAN_GRADIENT = o.value_numeric where o.concept_id = @AORTIC_VALVE_MEAN_GRADIENT;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Facility = o.value_text where o.concept_id = @Facility;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Cardiovascular_and_chronic_kidney_medication = o.value_text where o.concept_id = @Other_Cardiovascular_and_chronic_kidney_medication;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TSH = o.value_numeric where o.concept_id = @TSH;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Sensation_in_left_foot = o.value_numeric where o.concept_id = @Sensation_in_left_foot;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Sensation_in_right_foot = o.value_numeric where o.concept_id = @Sensation_in_right_foot;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Clinical_diagnosis_for_asthma = concept_name(o.value_coded, 'en') where o.concept_id = @Clinical_diagnosis_for_asthma;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Asthma_medications = concept_name(o.value_coded, 'en') where o.concept_id = @Asthma_medications;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Type_of_diabetes_diagnosis = concept_name(o.value_coded, 'en') where o.concept_id = @Type_of_diabetes_diagnosis;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diabetes_Medications = concept_name(o.value_coded, 'en') where o.concept_id = @Diabetes_Medications;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Diseasetext = o.value_text where o.concept_id = @Other_Diseasetext;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chronic_Respiratory_diseases = concept_name(o.value_coded, 'en') where o.concept_id = @Chronic_Respiratory_diseases;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.AORTIC_VALVE_PRESSURE_HALF_TIME = o.value_numeric where o.concept_id = @AORTIC_VALVE_PRESSURE_HALF_TIME;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_POTASSIUM_mEq_L = o.value_numeric where o.concept_id = @SERUM_POTASSIUM_mEq_L;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PEAK_GRADIENT_ACROSS_PULMONIC_VALVE = o.value_numeric where o.concept_id = @PEAK_GRADIENT_ACROSS_PULMONIC_VALVE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CARBON_DIOXIDE = o.value_numeric where o.concept_id = @SERUM_CARBON_DIOXIDE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.VSD_restrictive = concept_name(o.value_coded, 'en') where o.concept_id = @VSD_restrictive;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CALCIUM = o.value_numeric where o.concept_id = @SERUM_CALCIUM;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.upper_chest_Exam_Findings = concept_name(o.value_coded, 'en') where o.concept_id = @upper_chest_Exam_Findings;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MAIN_PULMONARY_ARTERY_SIZE = o.value_numeric where o.concept_id = @MAIN_PULMONARY_ARTERY_SIZE;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HbA1c = o.value_numeric where o.concept_id = @HbA1c;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BODY_MASS_INDEX_MEASURED = o.value_numeric where o.concept_id = @BODY_MASS_INDEX_MEASURED;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_before_salbutamol = o.value_numeric where o.concept_id = @Peak_flow_before_salbutamol;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_after_salbutamol = o.value_numeric where o.concept_id = @Peak_flow_after_salbutamol;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_GENERAL_EXAM_FINDINGS = o.value_text where o.concept_id = @OTHER_GENERAL_EXAM_FINDINGS;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MITRAL_VALVE_PRESSURE_HALF_TIME = o.value_numeric where o.concept_id = @MITRAL_VALVE_PRESSURE_HALF_TIME;
update temp_CKD_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_clinical_diagnosis_non_coded = o.value_text where o.concept_id = @Other_clinical_diagnosis_non_coded;

update temp_CKD_encounters   set BODY_MASS_INDEX_MEASURED = IF(HEIGHT_CM && WEIGHT_KG , IF(HEIGHT_CM > 3,ROUND(WEIGHT_KG/(HEIGHT_CM/100*HEIGHT_CM/100),1) ,ROUND(WEIGHT_KG/(HEIGHT_CM*HEIGHT_CM),1)) , null);

select * from temp_CKD_encounters;