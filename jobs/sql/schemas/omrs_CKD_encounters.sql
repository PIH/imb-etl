create table omrs_CKD_encounters (
    PATIENT_ID int,
    PATIENT_UUID text,
    ENCOUNTER_ID int,
    ENCOUNTER_UUID text,
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