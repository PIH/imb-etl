# First create a temporary table to hold the data to export
create temporary table temp_silicosis_encounters (
    PATIENT_ID int,
    PATIENT_UUID text,
    ENCOUNTER_ID int,
    ENCOUNTER_UUID text,
    FORM text,
    ENCOUNTER_DATE date,
    Facility text,
    Exit_NCD_but_did_not_exit_care text,
    Silicosis_Visit_Date date,
    HEIGHT_CM float,
    WEIGHT_KG float,
    SYSTOLIC_BLOOD_PRESSURE float,
    DIASTOLIC_BLOOD_PRESSURE float,
    PULSE float,
    RESPIRATORY_RATE float,
    shortness_of_breath_wheezing_coughing_chest_tightness text,
    Often_did_you_use_a_rescue_inhaler_in_response_to_these_symptoms text,
    Limited_were_your_activities_as_a_result_of_these_symptoms text,
    Often_did_you_wake_up_at_night_due_to_these_symptoms text,
    Current_Smoker text,
    Years_Mining float,
    Current_inhalers text,
    Recommended_inhalers text,
    FEV1_best float,
    FEV1_percent float,
    FVC_best float,
    FEV1_or_FVC_best float,
    Silicosis_Pattern text,
    Silicosis_Severity text,
    Silicosis_Reversible text,
    Silicosis_visit_general_comment text,
    Silicosi_Next_visit_date date,
    TELEPHONE_NUMBER text,
    Patient_s_Contact_Phone_Owner text,
    NAME_OF_HEALTH_CARE_PROVIDER text,
    Diagnosis_or_problem_non_coded text,
    TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL text,
    CURRENT_COMPLAINTS_OR_SYMPTOMS text,
    TIME_UNITS text,
    Duration float,
    PREVIOUS_MEDICAL_HISTORY text,
    BLOOD_OXYGEN_SATURATION float,
    BODY_MASS_INDEX_MEASURED float,
    Xrays text,
    DDB_ECHOCARDIOGRAPH_RESULT text,
    Clinical_diagnosis_for_asthma text,
    treatment_appoach text,
    Asthma_medications text,
    Patient_Medical_History text,
    CHRONIC_CARE_DIAGNOSIS text,
    Often_did_you_change_clothes_before_returning_home_from_work text,
    Often_did_you_wear_a_mask_at_work text,
    FVC_percent float,
    Salbutamol_y_or_n text,
    TB_ResultsSilicosis text,
    FVC_best_Post_salbutamol float,
    FVC_percent_Post_Salbutamol float,
    FEV1_or_FVC_best_Post_salbutamol float,
    Type_of_mask text,
    FEV1_best_Post_Salbutamol float,
    FEV1_percent_Post_salbutamol float,
    Classification_of_Silicosis text,
    Other text,
    NCDs_Diagnosis_HMIS text,
    TEMPERATURE_C float,
    GENERAL_EXAM_FINDINGS text,
    HEENT_EXAM_FINDINGS text,
    upper_chest_Exam_Findings text,
    Family_Care_givername text,
    Family_Care_giver_Phone_Number text,
    Home_Based_Care_Practionner_Phone_Number text,
    NAME_OF_REFERRING_SITE text,
    patient_chronic_disease_history text,
    Surgicalhistory text,
    Obstestrical text,
    UBUDEHE_CATEGORY text,
    Family_member_suffered_from_Chronic_disease text,
    Family_Member_Chronic_Diseases text,
    MEDICATION_HISTORY text,
    ALLERGY_TO_DRUG text,
    ALLERGY_COMMENT text,
    Location_of_lymphadenopathy text,
    Scar_Location text,
    Breast_Chest_Exam_Findings text,
    LUNG_EXAM_FINDINGS text,
    LOCATION_OF_CRACKLES text,
    CARDIAC_EXAM_FINDINGS text,
    ABDOMINAL_EXAM_FINDINGS text,
    UROGENITAL_EXAM_FINDINGS text,
    EXTREMITY_EXAM_FINDINGS text,
    NEUROLOGICAL_EXAM_FINDINGS text,
    Sensation_in_right_foot float,
    Sensation_in_left_foot float,
    PATIENTS_FLUID_MANAGEMENT text,
    other_medical_findings text,
    result_to_other_medical_findings text,
    Predicted_Peak_Flow float,
    Peak_flow_before_salbutamol float,
    Peak_flow_after_salbutamol float,
    Percent_peak_flow_change_after_salbutamol float,
    Peak_flow_percent_best_effort_vs_peak_flow_predicted float,
    RED_BLOOD_CELLS float,
    HEMOGLOBIN float,
    HEMATOCRIT float,
    WHITE_BLOOD_CELLS float,
    NEUTROPHILS float,
    EOSINOPHILS float,
    BASOPHILS float,
    LYMPHOCYTES float,
    MONOCYTES float,
    PLATELETS float,
    ASAT_RESULT text,
    ALAT_RESULT text,
    Gamma_GT float,
    SERUM_GLUCOSE float,
    SERUM_SODIUM float,
    SERUM_POTASSIUM_mEq_or_L float,
    SERUM_CALCIUM float,
    HbA1c float,
    TOTAL_PROTEIN float,
    ketone float,
    BLOOD_UREA_NITROGEN float,
    SERUM_CREATININE float,
    RESULT_OF_HIV_TEST text,
    TOTAL_CHOLESTEROL float,
    LOW_DENSITY_LIPOPROTEIN_CHOLESTEROL float,
    HIGH_DENSITY_LIPOPROTEIN_CHOLESTEROL float,
    TRIGLYCERIDES float,
    OTHER_LAB_TEST_NAME text,
    OTHER_LAB_TEST_RESULT text,
    fundoscopy text,
    ELECTROCARDIOGRAM_DIAGNOSIS_text text,
    EJECTION_FRACTION float,
    ECHOCARDIOGRAM_COMMENT text,
    Clinican_notes text,
    HEART_FAILURE_DIAGNOSIS text,
    NYHA_CLASS text,
    Type_of_diabetes_diagnosis text,
    Hypertension_Stages text,
    Other_pulmonary_disease_non_coded text,
    -- CURRENT_OPPORTUNISTIC_INFECTION_OR_COMORBIDITY_CONFIRMED_OR_PRESUMED text,
    Renal_Failure_Stages text,
    Other_clinical_diagnosis_non_coded text,
    NOON_DOSE_IN_MILLIGRAMS float,
    CARDIAC_MEDICATION text,
    MORNING_DOSE_IN_MILLIGRAMS float,
    NIGHT_DOSE_IN_MILLIGRAMS float,
    DRUG_FREQUENCY_CODED text,
    Other_Cardiovascular_and_chronic_kidney_medication text,
    Noon_Dose_in_Units float,
    Morning_Dose_in_Units float,
    Diabetes_Medications text,
    Evening_Dose_in_Units float,
    Bedtime_Dose_in_Units text,
    CLOTRIMAZOLE text,
    Glucometer_recommended_for_treatment text,
    Other_Diabetes_Drug text,
    Aminophyilline_dose_in_milligrams float,
    Doxycycline_Dose_in_milligrams float,
    Number_or_days float,
    Other_Asthma_drug text
);

# Populate the "rows" of this table to contain all silicosis encounters

insert into temp_silicosis_encounters (patient_id,patient_uuid , encounter_id,encounter_uuid,FORM,ENCOUNTER_DATE)
select enc.patient_id,p.uuid, enc.encounter_id,enc.uuid,f.name,enc.encounter_datetime
from encounter enc
inner join person p on p.person_id=enc.patient_id
inner join form f on f.form_id=enc.form_id
inner join patient_program pp on pp.patient_id=enc.patient_id
where f.name in 
	(
		"NCD - Silicosis Clinical Visit Form","NCD - Silicosis Enrollment Form", 
        "NCD - Silicosis Exit from Care Information"
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
         inner join temp_silicosis_encounters t on t.encounter_id = o.encounter_id
where o.voided = 0
;

# Add indexes on these for further query performance
create index temp_obs_oi on temp_obs(obs_id);
create index temp_obs_ci1 on temp_obs(encounter_id, concept_id);
create index temp_obs_ci2 on temp_obs(obs_group_id, concept_id);

update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Facility = o.value_text where o.concept_id = @Facility;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Exit_NCD_but_did_not_exit_care = concept_name(o.value_coded, 'en') where o.concept_id = @Exit_NCD_but_did_not_exit_care;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Silicosis_Visit_Date = o.value_datetime where o.concept_id = @Silicosis_Visit_Date;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEIGHT_CM = o.value_numeric where o.concept_id = @HEIGHT_CM;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WEIGHT_KG = o.value_numeric where o.concept_id = @WEIGHT_KG;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SYSTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @SYSTOLIC_BLOOD_PRESSURE;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DIASTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @DIASTOLIC_BLOOD_PRESSURE;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PULSE = o.value_numeric where o.concept_id = @PULSE;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESPIRATORY_RATE = o.value_numeric where o.concept_id = @RESPIRATORY_RATE;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.shortness_of_breath_wheezing_coughing_chest_tightness = concept_name(o.value_coded, 'en') where o.concept_id = @shortness_of_breath_wheezing_coughing_chest_tightness;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Often_did_you_use_a_rescue_inhaler_in_response_to_these_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Often_did_you_use_a_rescue_inhaler_in_response_to_these_symptoms;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Limited_were_your_activities_as_a_result_of_these_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Limited_were_your_activities_as_a_result_of_these_symptoms;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Often_did_you_wake_up_at_night_due_to_these_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Often_did_you_wake_up_at_night_due_to_these_symptoms;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Current_Smoker = concept_name(o.value_coded, 'en') where o.concept_id = @Current_Smoker;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Years_Mining = o.value_numeric where o.concept_id = @Years_Mining;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Current_inhalers = concept_name(o.value_coded, 'en') where o.concept_id = @Current_inhalers;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Recommended_inhalers = concept_name(o.value_coded, 'en') where o.concept_id = @Recommended_inhalers;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FEV1_best = o.value_numeric where o.concept_id = @FEV1_best;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FEV1_percent = o.value_numeric where o.concept_id = @FEV1_percent;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FVC_best = o.value_numeric where o.concept_id = @FVC_best;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FEV1_or_FVC_best = o.value_numeric where o.concept_id = @FEV1_or_FVC_best;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Silicosis_Pattern = concept_name(o.value_coded, 'en') where o.concept_id = @Silicosis_Pattern;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Silicosis_Severity = concept_name(o.value_coded, 'en') where o.concept_id = @Silicosis_Severity;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Silicosis_Reversible = concept_name(o.value_coded, 'en') where o.concept_id = @Silicosis_Reversible;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Silicosis_visit_general_comment = o.value_text where o.concept_id = @Silicosis_visit_general_comment;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Silicosi_Next_visit_date = o.value_datetime where o.concept_id = @Silicosi_Next_visit_date;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TELEPHONE_NUMBER = o.value_text where o.concept_id = @TELEPHONE_NUMBER;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_s_Contact_Phone_Owner = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_s_Contact_Phone_Owner;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_HEALTH_CARE_PROVIDER = o.value_text where o.concept_id = @NAME_OF_HEALTH_CARE_PROVIDER;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diagnosis_or_problem_non_coded = o.value_text where o.concept_id = @Diagnosis_or_problem_non_coded;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL = concept_name(o.value_coded, 'en') where o.concept_id = @TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CURRENT_COMPLAINTS_OR_SYMPTOMS = o.value_text where o.concept_id = @CURRENT_COMPLAINTS_OR_SYMPTOMS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TIME_UNITS = concept_name(o.value_coded, 'en') where o.concept_id = @TIME_UNITS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Duration = o.value_numeric where o.concept_id = @Duration;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PREVIOUS_MEDICAL_HISTORY = o.value_text where o.concept_id = @PREVIOUS_MEDICAL_HISTORY;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_OXYGEN_SATURATION = o.value_numeric where o.concept_id = @BLOOD_OXYGEN_SATURATION;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BODY_MASS_INDEX_MEASURED = o.value_numeric where o.concept_id = @BODY_MASS_INDEX_MEASURED;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Xrays = o.value_text where o.concept_id = @Xrays;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DDB_ECHOCARDIOGRAPH_RESULT = concept_name(o.value_coded, 'en') where o.concept_id = @DDB_ECHOCARDIOGRAPH_RESULT;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Clinical_diagnosis_for_asthma = concept_name(o.value_coded, 'en') where o.concept_id = @Clinical_diagnosis_for_asthma;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.treatment_appoach = concept_name(o.value_coded, 'en') where o.concept_id = @treatment_appoach;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Asthma_medications = concept_name(o.value_coded, 'en') where o.concept_id = @Asthma_medications;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_Medical_History = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_Medical_History;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CHRONIC_CARE_DIAGNOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @CHRONIC_CARE_DIAGNOSIS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Often_did_you_change_clothes_before_returning_home_from_work = concept_name(o.value_coded, 'en') where o.concept_id = @Often_did_you_change_clothes_before_returning_home_from_work;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Often_did_you_wear_a_mask_at_work = concept_name(o.value_coded, 'en') where o.concept_id = @Often_did_you_wear_a_mask_at_work;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FVC_percent = o.value_numeric where o.concept_id = @FVC_percent;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Salbutamol_y_or_n = concept_name(o.value_coded, 'en') where o.concept_id = @Salbutamol_y_or_n;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TB_ResultsSilicosis = concept_name(o.value_coded, 'en') where o.concept_id = @TB_ResultsSilicosis;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FVC_best_Post_salbutamol = o.value_numeric where o.concept_id = @FVC_best_Post_salbutamol;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FVC_percent_Post_Salbutamol = o.value_numeric where o.concept_id = @FVC_percent_Post_Salbutamol;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FEV1_or_FVC_best_Post_salbutamol = o.value_numeric where o.concept_id = @FEV1_or_FVC_best_Post_salbutamol;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Type_of_mask = concept_name(o.value_coded, 'en') where o.concept_id = @Type_of_mask;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FEV1_best_Post_Salbutamol = o.value_numeric where o.concept_id = @FEV1_best_Post_Salbutamol;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FEV1_percent_Post_salbutamol = o.value_numeric where o.concept_id = @FEV1_percent_Post_salbutamol;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Classification_of_Silicosis = concept_name(o.value_coded, 'en') where o.concept_id = @Classification_of_Silicosis;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other = o.value_text where o.concept_id = @Other;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NCDs_Diagnosis_HMIS = concept_name(o.value_coded, 'en') where o.concept_id = @NCDs_Diagnosis_HMIS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TEMPERATURE_C = o.value_numeric where o.concept_id = @TEMPERATURE_C;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.GENERAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @GENERAL_EXAM_FINDINGS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEENT_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @HEENT_EXAM_FINDINGS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.upper_chest_Exam_Findings = concept_name(o.value_coded, 'en') where o.concept_id = @upper_chest_Exam_Findings;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Care_givername = o.value_text where o.concept_id = @Family_Care_givername;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Care_giver_Phone_Number = o.value_text where o.concept_id = @Family_Care_giver_Phone_Number;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Home_Based_Care_Practionner_Phone_Number = o.value_text where o.concept_id = @Home_Based_Care_Practionner_Phone_Number;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_REFERRING_SITE = o.value_text where o.concept_id = @NAME_OF_REFERRING_SITE;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.patient_chronic_disease_history = concept_name(o.value_coded, 'en') where o.concept_id = @patient_chronic_disease_history;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Surgicalhistory = o.value_text where o.concept_id = @Surgicalhistory;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Obstestrical = o.value_text where o.concept_id = @Obstestrical;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.UBUDEHE_CATEGORY = concept_name(o.value_coded, 'en') where o.concept_id = @UBUDEHE_CATEGORY;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_member_suffered_from_Chronic_disease = concept_name(o.value_coded, 'en') where o.concept_id = @Family_member_suffered_from_Chronic_disease;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Member_Chronic_Diseases = concept_name(o.value_coded, 'en') where o.concept_id = @Family_Member_Chronic_Diseases;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MEDICATION_HISTORY = concept_name(o.value_coded, 'en') where o.concept_id = @MEDICATION_HISTORY;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ALLERGY_TO_DRUG = concept_name(o.value_coded, 'en') where o.concept_id = @ALLERGY_TO_DRUG;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ALLERGY_COMMENT = o.value_text where o.concept_id = @ALLERGY_COMMENT;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Location_of_lymphadenopathy = o.value_text where o.concept_id = @Location_of_lymphadenopathy;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Scar_Location = o.value_text where o.concept_id = @Scar_Location;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Breast_Chest_Exam_Findings = concept_name(o.value_coded, 'en') where o.concept_id = @Breast_Chest_Exam_Findings;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LUNG_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @LUNG_EXAM_FINDINGS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LOCATION_OF_CRACKLES = o.value_text where o.concept_id = @LOCATION_OF_CRACKLES;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CARDIAC_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @CARDIAC_EXAM_FINDINGS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ABDOMINAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @ABDOMINAL_EXAM_FINDINGS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.UROGENITAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @UROGENITAL_EXAM_FINDINGS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.EXTREMITY_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @EXTREMITY_EXAM_FINDINGS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NEUROLOGICAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @NEUROLOGICAL_EXAM_FINDINGS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Sensation_in_right_foot = o.value_numeric where o.concept_id = @Sensation_in_right_foot;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Sensation_in_left_foot = o.value_numeric where o.concept_id = @Sensation_in_left_foot;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PATIENTS_FLUID_MANAGEMENT = concept_name(o.value_coded, 'en') where o.concept_id = @PATIENTS_FLUID_MANAGEMENT;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_medical_findings = o.value_text where o.concept_id = @other_medical_findings;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.result_to_other_medical_findings = o.value_text where o.concept_id = @result_to_other_medical_findings;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Predicted_Peak_Flow = o.value_numeric where o.concept_id = @Predicted_Peak_Flow;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_before_salbutamol = o.value_numeric where o.concept_id = @Peak_flow_before_salbutamol;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_after_salbutamol = o.value_numeric where o.concept_id = @Peak_flow_after_salbutamol;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Percent_peak_flow_change_after_salbutamol = o.value_numeric where o.concept_id = @Percent_peak_flow_change_after_salbutamol;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Peak_flow_percent_best_effort_vs_peak_flow_predicted = o.value_numeric where o.concept_id = @Peak_flow_percent_best_effort_vs_peak_flow_predicted;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RED_BLOOD_CELLS = o.value_numeric where o.concept_id = @RED_BLOOD_CELLS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEMOGLOBIN = o.value_numeric where o.concept_id = @HEMOGLOBIN;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEMATOCRIT = o.value_numeric where o.concept_id = @HEMATOCRIT;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WHITE_BLOOD_CELLS = o.value_numeric where o.concept_id = @WHITE_BLOOD_CELLS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NEUTROPHILS = o.value_numeric where o.concept_id = @NEUTROPHILS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.EOSINOPHILS = o.value_numeric where o.concept_id = @EOSINOPHILS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BASOPHILS = o.value_numeric where o.concept_id = @BASOPHILS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LYMPHOCYTES = o.value_numeric where o.concept_id = @LYMPHOCYTES;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MONOCYTES = o.value_numeric where o.concept_id = @MONOCYTES;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PLATELETS = o.value_numeric where o.concept_id = @PLATELETS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ASAT_RESULT = o.value_text where o.concept_id = @ASAT_RESULT;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ALAT_RESULT = o.value_text where o.concept_id = @ALAT_RESULT;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Gamma_GT = o.value_numeric where o.concept_id = @Gamma_GT;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_GLUCOSE = o.value_numeric where o.concept_id = @SERUM_GLUCOSE;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_SODIUM = o.value_numeric where o.concept_id = @SERUM_SODIUM;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_POTASSIUM_mEq_or_L = o.value_numeric where o.concept_id = @SERUM_POTASSIUM_mEq_or_L;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CALCIUM = o.value_numeric where o.concept_id = @SERUM_CALCIUM;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HbA1c = o.value_numeric where o.concept_id = @HbA1c;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TOTAL_PROTEIN = o.value_numeric where o.concept_id = @TOTAL_PROTEIN;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ketone = o.value_numeric where o.concept_id = @ketone;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_UREA_NITROGEN = o.value_numeric where o.concept_id = @BLOOD_UREA_NITROGEN;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CREATININE = o.value_numeric where o.concept_id = @SERUM_CREATININE;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESULT_OF_HIV_TEST = concept_name(o.value_coded, 'en') where o.concept_id = @RESULT_OF_HIV_TEST;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TOTAL_CHOLESTEROL = o.value_numeric where o.concept_id = @TOTAL_CHOLESTEROL;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LOW_DENSITY_LIPOPROTEIN_CHOLESTEROL = o.value_numeric where o.concept_id = @LOW_DENSITY_LIPOPROTEIN_CHOLESTEROL;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HIGH_DENSITY_LIPOPROTEIN_CHOLESTEROL = o.value_numeric where o.concept_id = @HIGH_DENSITY_LIPOPROTEIN_CHOLESTEROL;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TRIGLYCERIDES = o.value_numeric where o.concept_id = @TRIGLYCERIDES;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_NAME = o.value_text where o.concept_id = @OTHER_LAB_TEST_NAME;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_RESULT = o.value_text where o.concept_id = @OTHER_LAB_TEST_RESULT;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.fundoscopy = o.value_text where o.concept_id = @fundoscopy;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ELECTROCARDIOGRAM_DIAGNOSIS_text = o.value_text where o.concept_id = @ELECTROCARDIOGRAM_DIAGNOSIS_text;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.EJECTION_FRACTION = o.value_numeric where o.concept_id = @EJECTION_FRACTION;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ECHOCARDIOGRAM_COMMENT = o.value_text where o.concept_id = @ECHOCARDIOGRAM_COMMENT;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Clinican_notes = o.value_text where o.concept_id = @Clinican_notes;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEART_FAILURE_DIAGNOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @HEART_FAILURE_DIAGNOSIS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NYHA_CLASS = concept_name(o.value_coded, 'en') where o.concept_id = @NYHA_CLASS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Type_of_diabetes_diagnosis = concept_name(o.value_coded, 'en') where o.concept_id = @Type_of_diabetes_diagnosis;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Hypertension_Stages = concept_name(o.value_coded, 'en') where o.concept_id = @Hypertension_Stages;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_pulmonary_disease_non_coded = o.value_text where o.concept_id = @Other_pulmonary_disease_non_coded;
-- update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CURRENT_OPPORTUNISTIC_INFECTION_OR_COMORBIDITY_CONFIRMED_OR_PRESUMED = concept_name(o.value_coded, 'en') where o.concept_id = @CURRENT_OPPORTUNISTIC_INFECTION_OR_COMORBIDITY_CONFIRMED_OR_PRESUMED;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Renal_Failure_Stages = concept_name(o.value_coded, 'en') where o.concept_id = @Renal_Failure_Stages;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_clinical_diagnosis_non_coded = o.value_text where o.concept_id = @Other_clinical_diagnosis_non_coded;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NOON_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @NOON_DOSE_IN_MILLIGRAMS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CARDIAC_MEDICATION = concept_name(o.value_coded, 'en') where o.concept_id = @CARDIAC_MEDICATION;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MORNING_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @MORNING_DOSE_IN_MILLIGRAMS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NIGHT_DOSE_IN_MILLIGRAMS = o.value_numeric where o.concept_id = @NIGHT_DOSE_IN_MILLIGRAMS;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DRUG_FREQUENCY_CODED = concept_name(o.value_coded, 'en') where o.concept_id = @DRUG_FREQUENCY_CODED;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Cardiovascular_and_chronic_kidney_medication = o.value_text where o.concept_id = @Other_Cardiovascular_and_chronic_kidney_medication;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Noon_Dose_in_Units = o.value_numeric where o.concept_id = @Noon_Dose_in_Units;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Morning_Dose_in_Units = o.value_numeric where o.concept_id = @Morning_Dose_in_Units;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diabetes_Medications = concept_name(o.value_coded, 'en') where o.concept_id = @Diabetes_Medications;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Evening_Dose_in_Units = o.value_numeric where o.concept_id = @Evening_Dose_in_Units;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Bedtime_Dose_in_Units = o.value_text where o.concept_id = @Bedtime_Dose_in_Units;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CLOTRIMAZOLE = concept_name(o.value_coded, 'en') where o.concept_id = @CLOTRIMAZOLE;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Glucometer_recommended_for_treatment = concept_name(o.value_coded, 'en') where o.concept_id = @Glucometer_recommended_for_treatment;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Diabetes_Drug = o.value_text where o.concept_id = @Other_Diabetes_Drug;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Aminophyilline_dose_in_milligrams = o.value_numeric where o.concept_id = @Aminophyilline_dose_in_milligrams;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Doxycycline_Dose_in_milligrams = o.value_numeric where o.concept_id = @Doxycycline_Dose_in_milligrams;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Number_or_days = o.value_numeric where o.concept_id = @Number_or_days;
update temp_silicosis_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Asthma_drug = o.value_text where o.concept_id = @Other_Asthma_drug;

update temp_silicosis_encounters   set BODY_MASS_INDEX_MEASURED = IF(HEIGHT_CM && WEIGHT_KG , IF(HEIGHT_CM > 3,ROUND(WEIGHT_KG/(HEIGHT_CM/100*HEIGHT_CM/100),1) ,ROUND(WEIGHT_KG/(HEIGHT_CM*HEIGHT_CM),1)) , null);

select * from temp_silicosis_encounters;