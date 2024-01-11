# First create a temporary table to hold the data to export
create temporary table temp_oncology_encounters (
    PATIENT_ID int,
    PATIENT_UUID text,
    ENCOUNTER_ID int,
    ENCOUNTER_UUID text,
    FORM text,
    ENCOUNTER_DATE date,
    TELEPHONE_NUMBER text,
    TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL text,
    OTHER_INSURANCE_TYPE_NON_CODED text,
    SECONDARY_TELEPHONE_NUMBER text,
    PATIENT_HAS_ACCOMPAGNATEUR text,
    RWANDA_INSURANCE_TYPE text,
    Mutuelle_level text,
    LOCATION_OF_REFERRING_CLINIC_OR_HOSPITAL text,
    NAMES_AND_FIRSTNAMES_OF_CONTACT text,
    TELEPHONE_NUMBER_OF_CONTACT text,
    ARE_YOU_ENROLLED_IN_A_MUTUELLE text,
    RELATIONSHIPS_OF_CONTACT text,
    SOCIO_ECONOMIC_ASSISTANCE_RECOMMENDED text,
    Body_surface_area float,
    WEIGHT_KG float,
    HEIGHT_CM float,
    Cancer_diagnosis_details text,
    Date_of_pathology_report date,
    Symptomatic_staging text,
    Location_of_pathology text,
    Planned_chemotherapy_regimen text,
    Planned_chemotherapy_start_date date,
    Pathology_performed text,
    Number_of_planned_chemotherapy_cycles float,
    Mass_location text,
    Overall_oncology_Stage text,
    Mass_size float,
    Planned_chemotherapy_regimen_length float,
    TUMOUR_PROGNOSIS_FOR_KS text,
    IMMUNE_SYSTEM_PROGNOSIS_FOR_KS text,
    SYSTEMIC_ILLNESS_PROGNOSIS_FOR_KS text,
    Planned_changes_to_standard_chemotherapy_regimen text,
    Progesterone_receptor text,
    Node text,
    Tumor text,
    Estrogen_receptor text,
    HER2_IHC text,
    LYMPHADENOPATHY text,
    Clustered_oncology_stage text,
    Skin_changes_related_to_breast_cancer_diagnosis text,
    HER2_FISH text,
    Breast_mass_mobility text,
    Metastases text,
    Bulky_mediastinal_disease_staging text,
    Chemotherapy_Administration_Change text,
    Chemotherapy_treatment_administration_status text,
    Cancer_disease_status_at_end_of_treatment_cycle text,
    Drug_stockout_details text,
    Reason_for_oncology_treatment_plan_modification text,
    Type_of_oncology_surgery_planned text,
    Planned_oncology_surgery_facility text,
    Date_of_planned_oncology_surgery text,
    Planned_oncology_surgery_date date,
    Planned_radiation_facility text,
    ADVERSE_EFFECT text,
    ADVERSE_EFFECT_MEDICATION_NON_CODED text,
    ADVERSE_EFFECT_MEDICATION text,
    Modification_made_to_oncology_treatment_plan text,
    Notes_for_future_chemotherapy_administration text,
    Ph_status text,
    Date_of_planned_raditation text,
    Reason_for_overriding_calculated_BSA text,
    ADVERSE_EFFECT_NON_CODED text,
    Performance_status float,
    Previous_cancer_treatment text,
    Traditional_treatments_used_by_patient text,
    Return_Visit_Location text,
    HISTORY_OF_ALCOHOL_USE text,
    CHRONIC_CARE_DIAGNOSIS text,
    SMOKING_HISTORY text,
    Family_member_with_cancer text,
    Cancer_progression_status text,
    Scheduled_Oncology_Outpatient_Clinic_Visit_date date,
    HIV_STATUS text,
    Previous_oncology_treatment text,
    Previous_cancer_diagnosis text,
    Patient_has_Consent_signed text,
    Email_address_of_Clinician text,
    Hospital_of_Origin_Non_Coded text,
    Date_Biopsy_Specimen_Taken date,
    Specimen_Obtained text,
    Biopsy_reference_number text,
    SOURCE_OF_INFORMATION text,
    EVER_HAD_ACTIVE_TUBERCULOSIS text,
    Other_solid_cancer_Non_Coded text,
    Other_chronic_care_diagnosis text,
    CD4_COUNT float,
    TESTS_ORDERED text,
    Tissue_biopsy_site text,
    Scheduled_Oncology_Biopsy_Visit_date date,
    RELATIONSHIP_OF_RELATIVE_TO_PATIENT_NON_CODED text,
    Type_of_cancer_diagnosis_for_a_family_member text,
    Mental_illness_non_coded text,
    Oncology_Pathology_Result_Visit date,
    Medical_Imaging_Type text,
    RELATIONSHIP_OF_RELATIVE_TO_PATIENT text,
    Repeat_biopsy text,
    Hospital_of_Origin text,
    Specimen_Obtained_Non_coded text,
    Telepathy_consultation_requested text,
    Other_liquid_cancer_Non_Coded text,
    Oncology_Special_Consultation_Visit date,
    ADVERSE_EFFECT_DATE date,
    Cancer_progression_status_non_coded text,
    Pain_score float,
    Previous_cancer_diagnosis_non_coded text,
    REASON_FOR_VISIT text,
    Edit_Head_and_Neck_cancer_diagnosis_state text,
    Doxorubicin_dose float,
    Cytogenetics text,
    Chronic_myelogenous_leukemia_staging text,
    Acute_lymphoblastic_leukemia_staging text,
    Head_and_neck_diagnosis_non_coded text,
    SOCIO_ECONOMIC_ASSISTANCE_NON_CODED text,
    H_pylori_status text,
    Multiple_myeloma_subclassification text,
    Chemotherapy_inpatient_ward_visit date,
    Liquid_cancer_staging text,
    URL_to_Biopsy_Result text,
    SOCIAL_SUPPORT_SERVICES float,
    traditional_treatments_used_by_patient_Non_coded text,
    Lymphadenopathy_levels text,
    Planned_chemotherapy_regimen_end_date date,
    Pathologic_diagnosis text,
    Imaging_and_findings_comment text,
    Imaging_studies_or_other_evaluations text,
    Imaging_study_site_X_RAY_CHEST text,
    IMAGING_STUDY_SITE_ABDOMINAL_PELVIC_ULTRASOUND text,
    Axillary_level_I_II text,
    Chemotherapy_regimen_timing text,
    Ipsalateral text,
    Pathologic_diagnosis_non_coded text,
    Supraclavicular_level text,
    Chemotherapy_infusion_center_visit_scheduled date,
    Confirmed_cancer_diagnosis text,
    Pre_Operative_Chemotherapy_Status text,
    Radiation_Status text,
    IMAGING_STUDY_SITE_CT_SCAN_OF_CHEST_ABDOMEN_PELVIS text,
    Treatment_Intent text,
    Surgery_Type text,
    SURGERY_STATUS text,
    Left_Side text,
    Oncology_surgery_facility text,
    Metastatic_imaging_assessment text,
    Institution_issuing_Surgical_pathology_report text,
    ONCOLOGY_SURGERY_FACILITY_NON_CODED text,
    Other_Institution_issuing_Surgical_pathology_report_non_coded text,
    Contralateral text,
    BIOPSY_DATE date,
    Infraclavicular_axillary_level_III text,
    Imaging_study_site_for_CHEST_X_RAY_non_coded text,
    Other_invasive_carcinoma text,
    Right_side text,
    IMAGING_STUDY_SITE_CT_SCAN_OF_ABDOMEN_PELVIS text,
    IMAGING_STUDY_SITE_ABDOMINAL_ULTRASOUND text,
    DATE_OF_SURGERY date,
    WILMS_TUMOR_TYPE text,
    Post_Operative_Chemotherapy_Status text,
    Location_of_pathology_Non_coded text,
    TESTS_ORDERED_NON_CODED text,
    Imaging_study_site_for_Abdominal_Pelvic_ultrasound_non_coded text,
    FEMALE_STERILIZATION text,
    Chemotherapy_type text,
    RESULT_OF_HIV_TEST text,
    On_ARVs_at_time_of_diagnosis text,
    OTHER_CHEMOTHERAPY_REGIMEN_NON_CODED text,
    WHITE_BLOOD_CELLS float,
    HUNGER_risk_stratification text,
    HEMOGLOBIN float,
    PLATELETS float,
    Philadelphia_Chromosome text,
    Test_Completed text,
    Chemotherapy_Status text,
    Source_of_Pathology_Report text,
    Radiation_or_Chemotherapy_Status text,
    HPV_or_p16_Status text,
    Palliative_Cancer_Therapy_Status text,
    Site_of_Biopsy text,
    Chemoradiation_or_Radiotherapy text,
    Location_of_endoscopy text,
    Endoscopy_Findings text,
    Source_of_test_tissue text,
    Sites_of_Metasteses text,
    Risk_Score float,
    Pregnancy_Interval_months text,
    B_HCG_amount float,
    AGE float,
    Largest_Tumor_Size text,
    Diagnosis_based_on text,
    Previous_failed_chemotherapy text,
    Antecedent_Pregnancy_Type text,
    CLINICAL_IMPRESSION_COMMENTS text,
    Biopsy_Location text,
    Other_source_of_pathologic_diagnosis text,
    Immunohistochemistry text,
    Histologic_Subtype text,
    Cotswolds_modifications text,
    INTERNATIONAL_PROGNOSTIC_SCORE float,
    NAME_OF_REFERRING_SITE text,
    OTHER_TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL_NON_CODED text,
    DIASTOLIC_BLOOD_PRESSURE float,
    SYSTOLIC_BLOOD_PRESSURE float,
    TEMPERATURE_C float,
    PULSE float,
    Oncology_Program_End_Reasons text,
    Mode_of_assessment text,
    CHEST_EXAM_COMMENTS text,
    CARDIAC_EXAM_FINDINGS text,
    LYMPH_NODE_EXAM_FINDINGS text,
    GENERAL_EXAM_FINDINGS text,
    LYMPH_NODE_EXAM_COMMENTS text,
    CHEST_EXAM_FINDINGS text,
    NEW_OR_ONGOING_SYMPTOMS text,
    PATIENT_PLAN_COMMENTS text,
    OTHER_PHYSICAL_EXAMS text,
    NEUTROPHILS float,
    EVER_HAD_ACTIVE_TUBERCULOSIS_coded text,
    HEAD_EARS_EYES_NOSE_AND_THROAT_SYSTEMS text,
    Oncology_general_symptoms text,
    other_follow_up text,
    Oncology_Chief_complaint text,
    BOTTLES_OF_BEER_PER_DAY float,
    Surgery_Pocedure text,
    Genital_abnormalities_text text,
    ABDOMINAL_EXAM_FINDINGS text,
    Ever_taken_epirubicin text,
    OTHER_MEDICATION_1 text,
    Genital_exam text,
    PHYSICAL_EXAMINATION text,
    Breast_Exam text,
    Previous_treatment_records_available_oncology text,
    Diagnosis_confidence text,
    Patient_ever_taken_doxorubicin text,
    Duration_of_oncology_complaint text,
    SYMPTOM_COMMENT text,
    Social_History text,
    PATIENT_PREGNANT float,
    Family_Planning_Status text,
    PARITY float,
    Other_Breast_oncologic_history_symptom text,
    Breast_mass_size_2nd_dimension float,
    Oncology_Breast_Symptom text,
    Head_and_neck_exam text,
    Breast_abnormality_test text,
    EXTREMITY_EXAM_FINDINGS text,
    Nervous_System_exam text,
    SKIN_EXAM_FINDINGS text,
    Telephone_number_of_clinician text,
    PREVIOUS_MEDICAL_HISTORY text,
    HIV_RAPID_TEST_QUALITATIVE text,
    X_RAY_CHEST text,
    Other_Hematologic_or_Endocrine_oncologic_history_symptom text,
    Head_and_neck_mass_location text,
    Head_and_neck_mass_size_biggest_dimension float,
    NCD_follow_up_facility text,
    Previous_to_oncology_intake_imaging_construct text,
    RETURN_VISIT_DATE date,
    Oncology_Hematologic_or_Endocrine_Symptom text,
    Hospital_admisison_facility text,
    Location_where_test_took_place text,
    BIOPSY_RESULT text,
    Lymphadenopathy_Coded text,
    Other_general_oncologic_history_symptom text,
    HEMATOCRIT float,
    LYMPHOCYTES float,
    Absolute_Neutrophil_Count float,
    Oncology_HEENT_Symptoms text,
    Other_HEENT_problem text,
    Oncology_Chest_Symptom text,
    Oncology_skin_symptoms text,
    Abdominal_mass_location text,
    Abdominal_mass_size_biggest_dimension float,
    Extremity_mass_location text,
    Extremity_mass_size_biggest_dimension float,
    Skin_abnormality text,
    SOCIO_ECONOMIC_ASSISTANCE_ALREADY_RECEIVED text,
    Oncology_Gastrointestinal_Symptom text,
    Chemo_facility text,
    Radiation_Facility text,
    OTHER_GENERAL_EXAM_FINDINGS text,
    Radiation_description text,
    Other_GI_oncologic_history_symptom text,
    Other_lymphadenopathy text,
    Mode_of_assessment_non_coded text,
    Exit_Notes text,
    Patient_referred_to_where text,
    Reason_for_hospital_admission_non_coded text,
    Splenomegaly_size float,
    SERUM_CREATININE float,
    SERUM_GLUTAMIC_PYRUVIC_TRANSAMINASE float,
    SERUM_GLUTAMIC_OXALOACETIC_TRANSAMINASE float,
    Lung_abnormality_text text,
    DIAGNOSIS text,
    TOTAL_BILIRUBIN float,
    DIRECT_BILIRUBIN float,
    OTHER_LAB_TEST_NAME text,
    OTHER_LAB_TEST_RESULT text,
    CARDIOVASCULAR_SYSTEM_COMMENT text,
    Other_skin_oncologic_history_symptom text,
    Other_vascular_or_musculoskeletal_oncologic_history_symptom text,
    BLOOD_UREA_NITROGEN float,
    LOCATION_OF_DEATH_NON_CODED text,
    Date_of_Death_is_Estimated text,
    LOCATION_OF_DEATH text,
    METHOD_OF_FAMILY_PLANNING text,
    Shape_of_mass text,
    Breast_Surgery_History_coded text,
    Anterior_posterior float,
    Indication_for_ultrasound text,
    Patient_Pregnant_coded text,
    Acoustic_Transmissioin text,
    Orientation text,
    mass_felt_also_seen_in_ultrasound text,
    Internal_Echo_Texture text,
    Margins text,
    Mass_visible text,
    location_of_mass_from_center_of_nipple float,
    Reason_of_ultrasound_follow_up text,
    Side_of_complaint_ultrasound text,
    Patient_Lactating_coded text,
    clock_face text,
    Transverse_Anti_radial float,
    Long_Radial float,
    Other_Assessment text,
    TYPE_OF_VISIT_NON_CODED text,
    Breast_mass text,
    Solid_mass text,
    Breast_Surgery_History_non_coded text,
    assessment_coded text,
    Oncology_neck_symptom text,
    referral_hospital_construct float,
    LOCATION_OF_ABDOMINAL_TENDERNESS text,
    Clinican_notes text,
    Oncology_Neurologic_Psychologic_Symptoms text,
    Genital_Abnormalities text,
    LESION_SIZE_largest_dimension float,
    Ultrasound_comments text,
    Ultrasound text,
    district_hospital_construct float,
    Medical_Imaging_Comment text,
    Medical_Imaging text,
    Result_of_Call text,
    Reason_for_missed_visit text,
    REASON_OF_CALLING_PATIENT text,
    Location_where_test_took_place_non_coded text,
    Other_reason_for_referral text,
    Other_extremity_abnormalities text,
    Neoadjuvant text,
    Neoadjuvant_Type text,
    Health_center_construct float,
    Scheduled_Inpatient_visit_Date date,
    Abnormal_non_palpable_lymph_node text,
    Dates_of_Ultrasound_follow_up date,
    Axillary_mass text,
    LABORATORY_TESTS_OTHER text,
    Nodule_description text,
    Nodule_size_cm float,
    Oncology_vascular__musculoskeletal_symptoms text,
    OEDEMA text,
    TUBERCULOSIS_DIAGNOSIS_DATE date,
    Facility text,
    Other_Neurologic_or_psychiatric_oncologic_history_symptom text,
    Next_Outpatient_RDV text,
    Health_Facility_Text text,
    Other_result_of_call text,
    Other_Reason_patient_did_not_think_it_is_necessary_to_come_in text,
    Other_reason_for_missing_visit text,
    Laboratory_tests_other_result text,
    Abnormal_Heart text,
    Cortical_thickness float,
    referred_to text,
    Oncology_Urinary_Symptoms text,
    Other_urinary_oncologic_history_symptom text,
    Other_neck_oncologic_history_symptom text,
    Other_chest_oncologic_history_symptom text,
    Other_NCD_follow_up_facility text,
    surface_of_mass_form_skin_surface float,
    Date_of_breast_Follow_up_exam date,
    ABSCESS text,
    B_HCG_Unit text,
    Other_Location_of_Metasteses text,
    Number_of_metasteses text,
    Adjuvant_Type text,
    Tumor_Resection_Margins text,
    Lymph_nodes_with_malignancy float,
    Lymph_nodes_sampled float,
    X_Ray_chest_comments text,
    Hepatomegaly_size float,
    Planned_changes_to_protocol_treatment_plan text,
    Palliative_Cancer_Therapy_Type text,
    Other_reason_patient_did_not_wish_to_continue_treatment text,
    Other_indication_of_ultrasound text,
    Death_Characteristics text,
    Next_inpatient_RDV text,
    SOCIO_ECONOMIC_ASSISTANCE text,
    diagnosis_confidence_2 text,
    study_site_for_CT_scan_of_Chest_Abdomen_Pelvis_non_coded text,
    Other_operative_findings text,
    Lymphocyte_Percent float,
    ERYTHROCYTE_SEDIMENTATION_RATE float,
    ABSOLUTE_LYMPHOCYTE_COUNT float,
    Other_Neoadjuvant_cancer_thearpy text,
    Positive_Philadelphia_Chromosome_Assessment_Method text,
    Induction_Chemotherapy_Status text,
    KS_CLINICAL_EXAM_FINDINGS text,
    TYPE_OF_LYMPH_NODES text,
    ANTIRETROVIRAL_TREATMENT_STATUS text,
    DATE_OF_CD4_COUNT date,
    Other_next_inpatient_visit_reasons text,
    Tumor_of_TNM text,
    Metasteses_of_TNM text,
    Node_of_TNM text,
    Adjuvant text,
    Location_of_Surgery text,
    Nervous_system_abnormality text,
    Extremity_mass_size_smallest_dimension float,
    Head_and_neck_mass_size_smallest_dimension float,
    Abdominal_mass_size_smallest_dimension float,
    HER2_Status text,
    Other_Location_of_Surgery text,
    ER_ float,
    LESION_SIZE_smallest_dimension float,
    other_follow_up_location text,
    SERUM_SODIUM float,
    SERUM_POTASSIUM float,
    SERUM_CHLORIDE float,
    SERUM_CALCIUM float,
    Tissue_biopsy text,
    PR_ float,
    OTHER_ECONOMIC_ASSISTANCE_ALREADY_RECEIVED text,
    OTHER_SURGERY_TYPE_NON_CODED text,
    URIC_ACID float,
    Other_Pathologic_Diagnosis text,
    Other_adjuvant_type text,
    Location_of_endoscopy_Non_coded text,
    Number_of_extranodal_disease_sites text,
    Tumor_Diameter_largest float,
    CSF_Cytology text,
    Bone_Marrow_Shows_Disease text,
    Other_Aggressive_NHL_subtype text,
    TREATMENT_PLAN_OTHER_REMARKS text,
    Pathologic_Oncology_Stage text,
    Pathologic_Metastases_of_TNM text,
    Pathologic_Tumor_of_TNM text,
    Pathologic_Node_of_TNM text,
    Diagnosis_Comment text,
    Did_neoadjuvant_chemo_occur_before_surgery_for_pathology text,
    Imaging_studies_non_coded text,
    Cancer_other text,
    NHL__Other text,
    Reason_for_visit_non_coded text,
    Discharge_diagnosis_comments text,
    Other_Benign text,
    SERUM_GLUCOSE float,
    Head_and_Neck_Cancer__Other text,
    Germ_Cell_Tumor__Other text,
    Leukemia__Other text,
    Outpatient_visit_Rwanda_Cancer_Center_Rwanda_Military_Hospital date,
    RESPIRATORY_RATE float,
    BLOOD_OXYGEN_SATURATION float,
    Planned_treatment text,
    Chemotherapy_Treatment_start_date date,
    Peciatric_Non_chemotherapy date,
    Institution_Providing_Radiotherapy text,
    File_Number float,
    Primary_Tumor_Diagnosis text,
    Cancer_Stage_Diagnosed_Externally text,
    Treatment_start_date date,
    Treatment_end_date date,
    Oncology_treatment_status text,
    Treatment_response text,
    Total_dose text,
    Number_of_fractions float,
    Simulation_method text,
    Other_treatment_technique text,
    Target_tumor text,
    NAME_OF_REFERRING_PERSON text,
    Radiation_form_completed_date date,
    Consent_signed text,
    Exam_findings text,
    Pathology_Sample_Drop_Off_Status text,
    Pathology_sample_status text,
    RADIOLOGY_FINDINGS text,
    Diagnosis_or_problem_non_coded text,
    LABS_NON_CODED text,
    Brachytherapy text,
    Title_of_referring_person text,
    acute_side_effects_and_management text,
    Treatment_technique text,
    CONCURRENT_CHEMOTHERAPY_or_OTHER_SYSTEMIC_TREATMENT text,
    CISPLATIN float,
    Cisplatin_schedule text,
    Pathology_Referral_Status text,
    Pediatric_Oncology_Visit date,
    Accession_Number text,
    Specimen_Submission_Date date,
    Sending_Physician text,
    Other_Biopsy_Location text,
    Organ_System text,
    Organ text,
    Other_tests_or_procedures text,
    Gross_Description text,
    pathology_results_approved text,
    pathology_request_encounter_UUID text,
    Specimen_Detail text,
    COMMENTS_AT_CONCLUSION_OF_EXAMINATION text,
    Microscopic_Examination text,
    Pathology_Comment text,
    CHW_Phone_Number text,
    DATE_INTAKE_FORM_WAS_FILLED_OUT date,
    Patient_received_chemotherapy text,
    Other text,
    skin_breakdown text,
    NAUSEA text,
    FATIGUE text,
    PATIENT_STATUS text,
    Pediatric_Chemotherapy date,
    Radiology_Date date,
    Difficulty_swallowing text,
    Mucositis text,
    Capecitabine_schedule text,
    DIARRHEA text,
    Neutropenia text,
    Capecitabine float,
    Palliation_Treatment_start_date date,
    Surgery_Treatment_start_date date,
    Treatment_starting_before_staging_complete text

);

# Populate the "rows" of this table to contain all PDC encounters

insert into temp_oncology_encounters (patient_id,patient_uuid , encounter_id,encounter_uuid,FORM,ENCOUNTER_DATE)
select enc.patient_id,p.uuid, enc.encounter_id,enc.uuid,f.name,enc.encounter_datetime
from encounter enc
inner join person p on p.person_id=enc.patient_id
inner join form f on f.form_id=enc.form_id
inner join patient_program pp on pp.patient_id=enc.patient_id
where f.name in 
	(
        "2017 Anal DST","2017 Breast DST","2017 Breast DST","2017 DST ALL","2017 DST Cervical Cancer",
        "2017 DST Chronic Lymphocytic Leukemia / Small Lymphocytic Lymphoma","2017 DST Chronic Myelogenous Leukemia (CML)",
        "2017 DST Colon Cancer","2017 DST GTN","2017 DST Head and Neck Cancer","2017 DST Hodgkins Lymphoma","2017 DST Kaposi Sarcoma",
        "2017 DST Non-Hodgkins Lymphoma","2017 DST Rectal Cancer","2017 Gastric And Distal Esophageal DST","2017 Post Nephroblastoma DST",
        "2017 Pre Nephroblastoma DST","2018 Breast DST","OLD - Oncology - Clinical Intake: OutPatient ended 2017-11-28",
        "ONC - Patient Labels for printing","Oncology - Adjuvant Endocrine Therapy Decentralization Intake Form",
        "Oncology - Admission","Oncology - Allergies","Oncology - Body Surface Area","Oncology - Body Surface Area Flow",
        "Oncology - Breast Cancer DST","Oncology - Cervical DST","Oncology - Change in Demographics","Oncology - Chemotherapy Treatment Summary",
        "Oncology - Chemotherapy Treatment Summary - Short","Oncology - Clinical Intake: InPatient","Oncology - Colon DST",
        "Oncology - Demographics data entry","Oncology - Diagnosis, Staging and Treatment Plan","Oncology - Discharge",
        "Oncology - Inpatient Discharge","Oncology - Lifetime Chemotherapy Dose to date","Oncology - Outpatient Flow",
        "Oncology - Outpatient Flow: Medication Allergies","Oncology - Outpatient Flow: Outpatient Clinic visits--data Officer entry",
        "Oncology - Pathology Results Notified","Oncology - Pathology Results Received","Oncology - Pathology Specimen Submission",
        "Oncology - Radiation treatment summary","Oncology - Remote Visit for Oral Oncology Treatment - Breast","Oncology - Schedule Appointment",
        "Oncology DST - Short","Oncology Exit Form","Oncology Inpatient - Intake","Oncology Outpatient - Attachments",
        "Oncology Outpatient - Breast Ultrasound Report","Oncology Outpatient - CA125 - AFP Tracking Sheet","Oncology Outpatient - Callback form",
        "Oncology Outpatient - Clinic visits","Oncology Outpatient - Demographics","Oncology Outpatient - GTD - Beta-HCG Tracking Sheet",
        "Oncology Outpatient - Intake","Oncology Outpatient - Pathology report","Oncology Summary of outpatient visits",
        "Oncology Visit Summary flowsheet","Oncology-kaposi&rsquo;s sarcoma","Pathology Request","Pathology Report for Pathology System",
        "Unready DST short generic"
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
         inner join temp_oncology_encounters t on t.encounter_id = o.encounter_id
where o.voided = 0
;

# Add indexes on these for further query performance
create index temp_obs_oi on temp_obs(obs_id);
create index temp_obs_ci1 on temp_obs(encounter_id, concept_id);
create index temp_obs_ci2 on temp_obs(obs_group_id, concept_id);

update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TELEPHONE_NUMBER = o.value_text where o.concept_id = @TELEPHONE_NUMBER;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL = concept_name(o.value_coded, 'en') where o.concept_id = @TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_INSURANCE_TYPE_NON_CODED = o.value_text where o.concept_id = @OTHER_INSURANCE_TYPE_NON_CODED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SECONDARY_TELEPHONE_NUMBER = o.value_text where o.concept_id = @SECONDARY_TELEPHONE_NUMBER;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PATIENT_HAS_ACCOMPAGNATEUR = concept_name(o.value_coded, 'en') where o.concept_id = @PATIENT_HAS_ACCOMPAGNATEUR;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RWANDA_INSURANCE_TYPE = concept_name(o.value_coded, 'en') where o.concept_id = @RWANDA_INSURANCE_TYPE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mutuelle_level = concept_name(o.value_coded, 'en') where o.concept_id = @Mutuelle_level;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LOCATION_OF_REFERRING_CLINIC_OR_HOSPITAL = concept_name(o.value_coded, 'en') where o.concept_id = @LOCATION_OF_REFERRING_CLINIC_OR_HOSPITAL;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NAMES_AND_FIRSTNAMES_OF_CONTACT = o.value_text where o.concept_id = @NAMES_AND_FIRSTNAMES_OF_CONTACT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TELEPHONE_NUMBER_OF_CONTACT = o.value_text where o.concept_id = @TELEPHONE_NUMBER_OF_CONTACT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ARE_YOU_ENROLLED_IN_A_MUTUELLE = concept_name(o.value_coded, 'en') where o.concept_id = @ARE_YOU_ENROLLED_IN_A_MUTUELLE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RELATIONSHIPS_OF_CONTACT = o.value_text where o.concept_id = @RELATIONSHIPS_OF_CONTACT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SOCIO_ECONOMIC_ASSISTANCE_RECOMMENDED = concept_name(o.value_coded, 'en') where o.concept_id = @SOCIO_ECONOMIC_ASSISTANCE_RECOMMENDED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Body_surface_area = o.value_numeric where o.concept_id = @Body_surface_area;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WEIGHT_KG = o.value_numeric where o.concept_id = @WEIGHT_KG;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEIGHT_CM = o.value_numeric where o.concept_id = @HEIGHT_CM;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Cancer_diagnosis_details = o.value_text where o.concept_id = @Cancer_diagnosis_details;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Date_of_pathology_report = o.value_datetime where o.concept_id = @Date_of_pathology_report;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Symptomatic_staging = concept_name(o.value_coded, 'en') where o.concept_id = @Symptomatic_staging;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Location_of_pathology = concept_name(o.value_coded, 'en') where o.concept_id = @Location_of_pathology;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Planned_chemotherapy_regimen = concept_name(o.value_coded, 'en') where o.concept_id = @Planned_chemotherapy_regimen;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Planned_chemotherapy_start_date = o.value_datetime where o.concept_id = @Planned_chemotherapy_start_date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pathology_performed = concept_name(o.value_coded, 'en') where o.concept_id = @Pathology_performed;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Number_of_planned_chemotherapy_cycles = o.value_numeric where o.concept_id = @Number_of_planned_chemotherapy_cycles;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mass_location = o.value_text where o.concept_id = @Mass_location;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Overall_oncology_Stage = concept_name(o.value_coded, 'en') where o.concept_id = @Overall_oncology_Stage;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mass_size = o.value_numeric where o.concept_id = @Mass_size;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Planned_chemotherapy_regimen_length = o.value_numeric where o.concept_id = @Planned_chemotherapy_regimen_length;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TUMOUR_PROGNOSIS_FOR_KS = concept_name(o.value_coded, 'en') where o.concept_id = @TUMOUR_PROGNOSIS_FOR_KS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.IMMUNE_SYSTEM_PROGNOSIS_FOR_KS = concept_name(o.value_coded, 'en') where o.concept_id = @IMMUNE_SYSTEM_PROGNOSIS_FOR_KS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SYSTEMIC_ILLNESS_PROGNOSIS_FOR_KS = concept_name(o.value_coded, 'en') where o.concept_id = @SYSTEMIC_ILLNESS_PROGNOSIS_FOR_KS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Planned_changes_to_standard_chemotherapy_regimen = o.value_text where o.concept_id = @Planned_changes_to_standard_chemotherapy_regimen;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Progesterone_receptor = concept_name(o.value_coded, 'en') where o.concept_id = @Progesterone_receptor;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Node = concept_name(o.value_coded, 'en') where o.concept_id = @Node;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Tumor = concept_name(o.value_coded, 'en') where o.concept_id = @Tumor;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Estrogen_receptor = concept_name(o.value_coded, 'en') where o.concept_id = @Estrogen_receptor;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HER2_IHC = concept_name(o.value_coded, 'en') where o.concept_id = @HER2_IHC;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LYMPHADENOPATHY = o.value_text where o.concept_id = @LYMPHADENOPATHY;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Clustered_oncology_stage = concept_name(o.value_coded, 'en') where o.concept_id = @Clustered_oncology_stage;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Skin_changes_related_to_breast_cancer_diagnosis = o.value_text where o.concept_id = @Skin_changes_related_to_breast_cancer_diagnosis;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HER2_FISH = concept_name(o.value_coded, 'en') where o.concept_id = @HER2_FISH;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Breast_mass_mobility = concept_name(o.value_coded, 'en') where o.concept_id = @Breast_mass_mobility;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Metastases = concept_name(o.value_coded, 'en') where o.concept_id = @Metastases;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Bulky_mediastinal_disease_staging = concept_name(o.value_coded, 'en') where o.concept_id = @Bulky_mediastinal_disease_staging;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chemotherapy_Administration_Change = o.value_text where o.concept_id = @Chemotherapy_Administration_Change;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chemotherapy_treatment_administration_status = concept_name(o.value_coded, 'en') where o.concept_id = @Chemotherapy_treatment_administration_status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Cancer_disease_status_at_end_of_treatment_cycle = concept_name(o.value_coded, 'en') where o.concept_id = @Cancer_disease_status_at_end_of_treatment_cycle;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Drug_stockout_details = o.value_text where o.concept_id = @Drug_stockout_details;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reason_for_oncology_treatment_plan_modification = concept_name(o.value_coded, 'en') where o.concept_id = @Reason_for_oncology_treatment_plan_modification;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Type_of_oncology_surgery_planned = o.value_text where o.concept_id = @Type_of_oncology_surgery_planned;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Planned_oncology_surgery_facility = o.value_text where o.concept_id = @Planned_oncology_surgery_facility;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Date_of_planned_oncology_surgery = o.value_text where o.concept_id = @Date_of_planned_oncology_surgery;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Planned_oncology_surgery_date = o.value_datetime where o.concept_id = @Planned_oncology_surgery_date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Planned_radiation_facility = concept_name(o.value_coded, 'en') where o.concept_id = @Planned_radiation_facility;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ADVERSE_EFFECT = concept_name(o.value_coded, 'en') where o.concept_id = @ADVERSE_EFFECT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ADVERSE_EFFECT_MEDICATION_NON_CODED = o.value_text where o.concept_id = @ADVERSE_EFFECT_MEDICATION_NON_CODED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ADVERSE_EFFECT_MEDICATION = concept_name(o.value_coded, 'en') where o.concept_id = @ADVERSE_EFFECT_MEDICATION;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Modification_made_to_oncology_treatment_plan = concept_name(o.value_coded, 'en') where o.concept_id = @Modification_made_to_oncology_treatment_plan;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Notes_for_future_chemotherapy_administration = o.value_text where o.concept_id = @Notes_for_future_chemotherapy_administration;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Ph_status = concept_name(o.value_coded, 'en') where o.concept_id = @Ph_status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Date_of_planned_raditation = o.value_text where o.concept_id = @Date_of_planned_raditation;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reason_for_overriding_calculated_BSA = o.value_text where o.concept_id = @Reason_for_overriding_calculated_BSA;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ADVERSE_EFFECT_NON_CODED = o.value_text where o.concept_id = @ADVERSE_EFFECT_NON_CODED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Performance_status = o.value_numeric where o.concept_id = @Performance_status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Previous_cancer_treatment = concept_name(o.value_coded, 'en') where o.concept_id = @Previous_cancer_treatment;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Traditional_treatments_used_by_patient = concept_name(o.value_coded, 'en') where o.concept_id = @Traditional_treatments_used_by_patient;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Return_Visit_Location = concept_name(o.value_coded, 'en') where o.concept_id = @Return_Visit_Location;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HISTORY_OF_ALCOHOL_USE = concept_name(o.value_coded, 'en') where o.concept_id = @HISTORY_OF_ALCOHOL_USE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CHRONIC_CARE_DIAGNOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @CHRONIC_CARE_DIAGNOSIS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SMOKING_HISTORY = concept_name(o.value_coded, 'en') where o.concept_id = @SMOKING_HISTORY;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_member_with_cancer = concept_name(o.value_coded, 'en') where o.concept_id = @Family_member_with_cancer;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Cancer_progression_status = concept_name(o.value_coded, 'en') where o.concept_id = @Cancer_progression_status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Scheduled_Oncology_Outpatient_Clinic_Visit_date = o.value_datetime where o.concept_id = @Scheduled_Oncology_Outpatient_Clinic_Visit_date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HIV_STATUS = concept_name(o.value_coded, 'en') where o.concept_id = @HIV_STATUS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Previous_oncology_treatment = concept_name(o.value_coded, 'en') where o.concept_id = @Previous_oncology_treatment;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Previous_cancer_diagnosis = concept_name(o.value_coded, 'en') where o.concept_id = @Previous_cancer_diagnosis;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_has_Consent_signed = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_has_Consent_signed;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Email_address_of_Clinician = o.value_text where o.concept_id = @Email_address_of_Clinician;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Hospital_of_Origin_Non_Coded = o.value_text where o.concept_id = @Hospital_of_Origin_Non_Coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Date_Biopsy_Specimen_Taken = o.value_datetime where o.concept_id = @Date_Biopsy_Specimen_Taken;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Specimen_Obtained = concept_name(o.value_coded, 'en') where o.concept_id = @Specimen_Obtained;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Biopsy_reference_number = o.value_text where o.concept_id = @Biopsy_reference_number;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SOURCE_OF_INFORMATION = concept_name(o.value_coded, 'en') where o.concept_id = @SOURCE_OF_INFORMATION;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.EVER_HAD_ACTIVE_TUBERCULOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @EVER_HAD_ACTIVE_TUBERCULOSIS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_solid_cancer_Non_Coded = o.value_text where o.concept_id = @Other_solid_cancer_Non_Coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_chronic_care_diagnosis = o.value_text where o.concept_id = @Other_chronic_care_diagnosis;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CD4_COUNT = o.value_numeric where o.concept_id = @CD4_COUNT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TESTS_ORDERED = concept_name(o.value_coded, 'en') where o.concept_id = @TESTS_ORDERED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Tissue_biopsy_site = o.value_text where o.concept_id = @Tissue_biopsy_site;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Scheduled_Oncology_Biopsy_Visit_date = o.value_datetime where o.concept_id = @Scheduled_Oncology_Biopsy_Visit_date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RELATIONSHIP_OF_RELATIVE_TO_PATIENT_NON_CODED = o.value_text where o.concept_id = @RELATIONSHIP_OF_RELATIVE_TO_PATIENT_NON_CODED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Type_of_cancer_diagnosis_for_a_family_member = concept_name(o.value_coded, 'en') where o.concept_id = @Type_of_cancer_diagnosis_for_a_family_member;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mental_illness_non_coded = o.value_text where o.concept_id = @Mental_illness_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_Pathology_Result_Visit = o.value_datetime where o.concept_id = @Oncology_Pathology_Result_Visit;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Medical_Imaging_Type = o.value_text where o.concept_id = @Medical_Imaging_Type;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RELATIONSHIP_OF_RELATIVE_TO_PATIENT = concept_name(o.value_coded, 'en') where o.concept_id = @RELATIONSHIP_OF_RELATIVE_TO_PATIENT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Repeat_biopsy = concept_name(o.value_coded, 'en') where o.concept_id = @Repeat_biopsy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Hospital_of_Origin = concept_name(o.value_coded, 'en') where o.concept_id = @Hospital_of_Origin;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Specimen_Obtained_Non_coded = o.value_text where o.concept_id = @Specimen_Obtained_Non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Telepathy_consultation_requested = concept_name(o.value_coded, 'en') where o.concept_id = @Telepathy_consultation_requested;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_liquid_cancer_Non_Coded = o.value_text where o.concept_id = @Other_liquid_cancer_Non_Coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_Special_Consultation_Visit = o.value_datetime where o.concept_id = @Oncology_Special_Consultation_Visit;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ADVERSE_EFFECT_DATE = o.value_datetime where o.concept_id = @ADVERSE_EFFECT_DATE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Cancer_progression_status_non_coded = o.value_text where o.concept_id = @Cancer_progression_status_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pain_score = o.value_numeric where o.concept_id = @Pain_score;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Previous_cancer_diagnosis_non_coded = o.value_text where o.concept_id = @Previous_cancer_diagnosis_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.REASON_FOR_VISIT = concept_name(o.value_coded, 'en') where o.concept_id = @REASON_FOR_VISIT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Edit_Head_and_Neck_cancer_diagnosis_state = concept_name(o.value_coded, 'en') where o.concept_id = @Edit_Head_and_Neck_cancer_diagnosis_state;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Doxorubicin_dose = o.value_numeric where o.concept_id = @Doxorubicin_dose;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Cytogenetics = concept_name(o.value_coded, 'en') where o.concept_id = @Cytogenetics;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chronic_myelogenous_leukemia_staging = concept_name(o.value_coded, 'en') where o.concept_id = @Chronic_myelogenous_leukemia_staging;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Acute_lymphoblastic_leukemia_staging = concept_name(o.value_coded, 'en') where o.concept_id = @Acute_lymphoblastic_leukemia_staging;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Head_and_neck_diagnosis_non_coded = o.value_text where o.concept_id = @Head_and_neck_diagnosis_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SOCIO_ECONOMIC_ASSISTANCE_NON_CODED = o.value_text where o.concept_id = @SOCIO_ECONOMIC_ASSISTANCE_NON_CODED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.H_pylori_status = concept_name(o.value_coded, 'en') where o.concept_id = @H_pylori_status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Multiple_myeloma_subclassification = concept_name(o.value_coded, 'en') where o.concept_id = @Multiple_myeloma_subclassification;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chemotherapy_inpatient_ward_visit = o.value_datetime where o.concept_id = @Chemotherapy_inpatient_ward_visit;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Liquid_cancer_staging = o.value_text where o.concept_id = @Liquid_cancer_staging;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.URL_to_Biopsy_Result = o.value_text where o.concept_id = @URL_to_Biopsy_Result;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SOCIAL_SUPPORT_SERVICES = o.value_numeric where o.concept_id = @SOCIAL_SUPPORT_SERVICES;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.traditional_treatments_used_by_patient_Non_coded = o.value_text where o.concept_id = @traditional_treatments_used_by_patient_Non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Lymphadenopathy_levels = concept_name(o.value_coded, 'en') where o.concept_id = @Lymphadenopathy_levels;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Planned_chemotherapy_regimen_end_date = o.value_datetime where o.concept_id = @Planned_chemotherapy_regimen_end_date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pathologic_diagnosis = concept_name(o.value_coded, 'en') where o.concept_id = @Pathologic_diagnosis;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Imaging_and_findings_comment = o.value_text where o.concept_id = @Imaging_and_findings_comment;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Imaging_studies_or_other_evaluations = concept_name(o.value_coded, 'en') where o.concept_id = @Imaging_studies_or_other_evaluations;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Imaging_study_site_X_RAY_CHEST = concept_name(o.value_coded, 'en') where o.concept_id = @Imaging_study_site_X_RAY_CHEST;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.IMAGING_STUDY_SITE_ABDOMINAL_PELVIC_ULTRASOUND = concept_name(o.value_coded, 'en') where o.concept_id = @IMAGING_STUDY_SITE_ABDOMINAL_PELVIC_ULTRASOUND;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Axillary_level_I_II = concept_name(o.value_coded, 'en') where o.concept_id = @Axillary_level_I_II;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chemotherapy_regimen_timing = concept_name(o.value_coded, 'en') where o.concept_id = @Chemotherapy_regimen_timing;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Ipsalateral = concept_name(o.value_coded, 'en') where o.concept_id = @Ipsalateral;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pathologic_diagnosis_non_coded = o.value_text where o.concept_id = @Pathologic_diagnosis_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Supraclavicular_level = concept_name(o.value_coded, 'en') where o.concept_id = @Supraclavicular_level;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chemotherapy_infusion_center_visit_scheduled = o.value_datetime where o.concept_id = @Chemotherapy_infusion_center_visit_scheduled;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Confirmed_cancer_diagnosis = concept_name(o.value_coded, 'en') where o.concept_id = @Confirmed_cancer_diagnosis;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pre_Operative_Chemotherapy_Status = concept_name(o.value_coded, 'en') where o.concept_id = @Pre_Operative_Chemotherapy_Status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Radiation_Status = concept_name(o.value_coded, 'en') where o.concept_id = @Radiation_Status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.IMAGING_STUDY_SITE_CT_SCAN_OF_CHEST_ABDOMEN_PELVIS = concept_name(o.value_coded, 'en') where o.concept_id = @IMAGING_STUDY_SITE_CT_SCAN_OF_CHEST_ABDOMEN_PELVIS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Treatment_Intent = concept_name(o.value_coded, 'en') where o.concept_id = @Treatment_Intent;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Surgery_Type = concept_name(o.value_coded, 'en') where o.concept_id = @Surgery_Type;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SURGERY_STATUS = concept_name(o.value_coded, 'en') where o.concept_id = @SURGERY_STATUS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Left_Side = concept_name(o.value_coded, 'en') where o.concept_id = @Left_Side;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_surgery_facility = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_surgery_facility;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Metastatic_imaging_assessment = concept_name(o.value_coded, 'en') where o.concept_id = @Metastatic_imaging_assessment;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Institution_issuing_Surgical_pathology_report = concept_name(o.value_coded, 'en') where o.concept_id = @Institution_issuing_Surgical_pathology_report;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ONCOLOGY_SURGERY_FACILITY_NON_CODED = o.value_text where o.concept_id = @ONCOLOGY_SURGERY_FACILITY_NON_CODED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Institution_issuing_Surgical_pathology_report_non_coded = o.value_text where o.concept_id = @Other_Institution_issuing_Surgical_pathology_report_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Contralateral = concept_name(o.value_coded, 'en') where o.concept_id = @Contralateral;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BIOPSY_DATE = o.value_datetime where o.concept_id = @BIOPSY_DATE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Infraclavicular_axillary_level_III = concept_name(o.value_coded, 'en') where o.concept_id = @Infraclavicular_axillary_level_III;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Imaging_study_site_for_CHEST_X_RAY_non_coded = o.value_text where o.concept_id = @Imaging_study_site_for_CHEST_X_RAY_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_invasive_carcinoma = o.value_text where o.concept_id = @Other_invasive_carcinoma;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Right_side = concept_name(o.value_coded, 'en') where o.concept_id = @Right_side;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.IMAGING_STUDY_SITE_CT_SCAN_OF_ABDOMEN_PELVIS = concept_name(o.value_coded, 'en') where o.concept_id = @IMAGING_STUDY_SITE_CT_SCAN_OF_ABDOMEN_PELVIS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.IMAGING_STUDY_SITE_ABDOMINAL_ULTRASOUND = concept_name(o.value_coded, 'en') where o.concept_id = @IMAGING_STUDY_SITE_ABDOMINAL_ULTRASOUND;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DATE_OF_SURGERY = o.value_datetime where o.concept_id = @DATE_OF_SURGERY;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WILMS_TUMOR_TYPE = concept_name(o.value_coded, 'en') where o.concept_id = @WILMS_TUMOR_TYPE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Post_Operative_Chemotherapy_Status = concept_name(o.value_coded, 'en') where o.concept_id = @Post_Operative_Chemotherapy_Status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Location_of_pathology_Non_coded = o.value_text where o.concept_id = @Location_of_pathology_Non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TESTS_ORDERED_NON_CODED = o.value_text where o.concept_id = @TESTS_ORDERED_NON_CODED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Imaging_study_site_for_Abdominal_Pelvic_ultrasound_non_coded = o.value_text where o.concept_id = @Imaging_study_site_for_Abdominal_Pelvic_ultrasound_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FEMALE_STERILIZATION = concept_name(o.value_coded, 'en') where o.concept_id = @FEMALE_STERILIZATION;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chemotherapy_type = concept_name(o.value_coded, 'en') where o.concept_id = @Chemotherapy_type;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESULT_OF_HIV_TEST = concept_name(o.value_coded, 'en') where o.concept_id = @RESULT_OF_HIV_TEST;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.On_ARVs_at_time_of_diagnosis = concept_name(o.value_coded, 'en') where o.concept_id = @On_ARVs_at_time_of_diagnosis;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_CHEMOTHERAPY_REGIMEN_NON_CODED = o.value_text where o.concept_id = @OTHER_CHEMOTHERAPY_REGIMEN_NON_CODED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WHITE_BLOOD_CELLS = o.value_numeric where o.concept_id = @WHITE_BLOOD_CELLS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HUNGER_risk_stratification = concept_name(o.value_coded, 'en') where o.concept_id = @HUNGER_risk_stratification;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEMOGLOBIN = o.value_numeric where o.concept_id = @HEMOGLOBIN;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PLATELETS = o.value_numeric where o.concept_id = @PLATELETS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Philadelphia_Chromosome = concept_name(o.value_coded, 'en') where o.concept_id = @Philadelphia_Chromosome;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Test_Completed = concept_name(o.value_coded, 'en') where o.concept_id = @Test_Completed;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chemotherapy_Status = concept_name(o.value_coded, 'en') where o.concept_id = @Chemotherapy_Status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Source_of_Pathology_Report = concept_name(o.value_coded, 'en') where o.concept_id = @Source_of_Pathology_Report;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Radiation_or_Chemotherapy_Status = concept_name(o.value_coded, 'en') where o.concept_id = @Radiation_or_Chemotherapy_Status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HPV_or_p16_Status = concept_name(o.value_coded, 'en') where o.concept_id = @HPV_or_p16_Status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Palliative_Cancer_Therapy_Status = concept_name(o.value_coded, 'en') where o.concept_id = @Palliative_Cancer_Therapy_Status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Site_of_Biopsy = concept_name(o.value_coded, 'en') where o.concept_id = @Site_of_Biopsy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chemoradiation_or_Radiotherapy = concept_name(o.value_coded, 'en') where o.concept_id = @Chemoradiation_or_Radiotherapy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Location_of_endoscopy = concept_name(o.value_coded, 'en') where o.concept_id = @Location_of_endoscopy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Endoscopy_Findings = o.value_text where o.concept_id = @Endoscopy_Findings;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Source_of_test_tissue = concept_name(o.value_coded, 'en') where o.concept_id = @Source_of_test_tissue;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Sites_of_Metasteses = concept_name(o.value_coded, 'en') where o.concept_id = @Sites_of_Metasteses;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Risk_Score = o.value_numeric where o.concept_id = @Risk_Score;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pregnancy_Interval_months = concept_name(o.value_coded, 'en') where o.concept_id = @Pregnancy_Interval_months;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.B_HCG_amount = o.value_numeric where o.concept_id = @B_HCG_amount;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.AGE = o.value_numeric where o.concept_id = @AGE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Largest_Tumor_Size = concept_name(o.value_coded, 'en') where o.concept_id = @Largest_Tumor_Size;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diagnosis_based_on = concept_name(o.value_coded, 'en') where o.concept_id = @Diagnosis_based_on;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Previous_failed_chemotherapy = concept_name(o.value_coded, 'en') where o.concept_id = @Previous_failed_chemotherapy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Antecedent_Pregnancy_Type = concept_name(o.value_coded, 'en') where o.concept_id = @Antecedent_Pregnancy_Type;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CLINICAL_IMPRESSION_COMMENTS = o.value_text where o.concept_id = @CLINICAL_IMPRESSION_COMMENTS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Biopsy_Location = concept_name(o.value_coded, 'en') where o.concept_id = @Biopsy_Location;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_source_of_pathologic_diagnosis = o.value_text where o.concept_id = @Other_source_of_pathologic_diagnosis;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Immunohistochemistry = concept_name(o.value_coded, 'en') where o.concept_id = @Immunohistochemistry;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Histologic_Subtype = concept_name(o.value_coded, 'en') where o.concept_id = @Histologic_Subtype;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Cotswolds_modifications = concept_name(o.value_coded, 'en') where o.concept_id = @Cotswolds_modifications;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.INTERNATIONAL_PROGNOSTIC_SCORE = o.value_numeric where o.concept_id = @INTERNATIONAL_PROGNOSTIC_SCORE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_REFERRING_SITE = o.value_text where o.concept_id = @NAME_OF_REFERRING_SITE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL_NON_CODED = o.value_text where o.concept_id = @OTHER_TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL_NON_CODED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DIASTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @DIASTOLIC_BLOOD_PRESSURE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SYSTOLIC_BLOOD_PRESSURE = o.value_numeric where o.concept_id = @SYSTOLIC_BLOOD_PRESSURE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TEMPERATURE_C = o.value_numeric where o.concept_id = @TEMPERATURE_C;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PULSE = o.value_numeric where o.concept_id = @PULSE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_Program_End_Reasons = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_Program_End_Reasons;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mode_of_assessment = concept_name(o.value_coded, 'en') where o.concept_id = @Mode_of_assessment;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CHEST_EXAM_COMMENTS = o.value_text where o.concept_id = @CHEST_EXAM_COMMENTS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CARDIAC_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @CARDIAC_EXAM_FINDINGS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LYMPH_NODE_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @LYMPH_NODE_EXAM_FINDINGS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.GENERAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @GENERAL_EXAM_FINDINGS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LYMPH_NODE_EXAM_COMMENTS = o.value_text where o.concept_id = @LYMPH_NODE_EXAM_COMMENTS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CHEST_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @CHEST_EXAM_FINDINGS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NEW_OR_ONGOING_SYMPTOMS = o.value_text where o.concept_id = @NEW_OR_ONGOING_SYMPTOMS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PATIENT_PLAN_COMMENTS = o.value_text where o.concept_id = @PATIENT_PLAN_COMMENTS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_PHYSICAL_EXAMS = o.value_text where o.concept_id = @OTHER_PHYSICAL_EXAMS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NEUTROPHILS = o.value_numeric where o.concept_id = @NEUTROPHILS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.EVER_HAD_ACTIVE_TUBERCULOSIS_coded = concept_name(o.value_coded, 'en') where o.concept_id = @EVER_HAD_ACTIVE_TUBERCULOSIS_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEAD_EARS_EYES_NOSE_AND_THROAT_SYSTEMS = o.value_text where o.concept_id = @HEAD_EARS_EYES_NOSE_AND_THROAT_SYSTEMS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_general_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_general_symptoms;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_follow_up = o.value_text where o.concept_id = @other_follow_up;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_Chief_complaint = o.value_text where o.concept_id = @Oncology_Chief_complaint;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BOTTLES_OF_BEER_PER_DAY = o.value_numeric where o.concept_id = @BOTTLES_OF_BEER_PER_DAY;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Surgery_Pocedure = o.value_text where o.concept_id = @Surgery_Pocedure;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Genital_abnormalities_text = o.value_text where o.concept_id = @Genital_abnormalities_text;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ABDOMINAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @ABDOMINAL_EXAM_FINDINGS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Ever_taken_epirubicin = concept_name(o.value_coded, 'en') where o.concept_id = @Ever_taken_epirubicin;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_MEDICATION_1 = o.value_text where o.concept_id = @OTHER_MEDICATION_1;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Genital_exam = concept_name(o.value_coded, 'en') where o.concept_id = @Genital_exam;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PHYSICAL_EXAMINATION = o.value_text where o.concept_id = @PHYSICAL_EXAMINATION;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Breast_Exam = concept_name(o.value_coded, 'en') where o.concept_id = @Breast_Exam;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Previous_treatment_records_available_oncology = concept_name(o.value_coded, 'en') where o.concept_id = @Previous_treatment_records_available_oncology;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diagnosis_confidence = concept_name(o.value_coded, 'en') where o.concept_id = @Diagnosis_confidence;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_ever_taken_doxorubicin = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_ever_taken_doxorubicin;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Duration_of_oncology_complaint = o.value_text where o.concept_id = @Duration_of_oncology_complaint;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SYMPTOM_COMMENT = o.value_text where o.concept_id = @SYMPTOM_COMMENT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Social_History = o.value_text where o.concept_id = @Social_History;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PATIENT_PREGNANT = o.value_numeric where o.concept_id = @PATIENT_PREGNANT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Planning_Status = concept_name(o.value_coded, 'en') where o.concept_id = @Family_Planning_Status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PARITY = o.value_numeric where o.concept_id = @PARITY;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Breast_oncologic_history_symptom = o.value_text where o.concept_id = @Other_Breast_oncologic_history_symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Breast_mass_size_2nd_dimension = o.value_numeric where o.concept_id = @Breast_mass_size_2nd_dimension;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_Breast_Symptom = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_Breast_Symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Head_and_neck_exam = concept_name(o.value_coded, 'en') where o.concept_id = @Head_and_neck_exam;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Breast_abnormality_test = o.value_text where o.concept_id = @Breast_abnormality_test;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.EXTREMITY_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @EXTREMITY_EXAM_FINDINGS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Nervous_System_exam = concept_name(o.value_coded, 'en') where o.concept_id = @Nervous_System_exam;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SKIN_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @SKIN_EXAM_FINDINGS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Telephone_number_of_clinician = o.value_text where o.concept_id = @Telephone_number_of_clinician;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PREVIOUS_MEDICAL_HISTORY = o.value_text where o.concept_id = @PREVIOUS_MEDICAL_HISTORY;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HIV_RAPID_TEST_QUALITATIVE = concept_name(o.value_coded, 'en') where o.concept_id = @HIV_RAPID_TEST_QUALITATIVE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.X_RAY_CHEST = concept_name(o.value_coded, 'en') where o.concept_id = @X_RAY_CHEST;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Hematologic_or_Endocrine_oncologic_history_symptom = o.value_text where o.concept_id = @Other_Hematologic_or_Endocrine_oncologic_history_symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Head_and_neck_mass_location = o.value_text where o.concept_id = @Head_and_neck_mass_location;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Head_and_neck_mass_size_biggest_dimension = o.value_numeric where o.concept_id = @Head_and_neck_mass_size_biggest_dimension;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NCD_follow_up_facility = concept_name(o.value_coded, 'en') where o.concept_id = @NCD_follow_up_facility;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Previous_to_oncology_intake_imaging_construct = concept_name(o.value_coded, 'en') where o.concept_id = @Previous_to_oncology_intake_imaging_construct;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RETURN_VISIT_DATE = o.value_datetime where o.concept_id = @RETURN_VISIT_DATE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_Hematologic_or_Endocrine_Symptom = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_Hematologic_or_Endocrine_Symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Hospital_admisison_facility = concept_name(o.value_coded, 'en') where o.concept_id = @Hospital_admisison_facility;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Location_where_test_took_place = concept_name(o.value_coded, 'en') where o.concept_id = @Location_where_test_took_place;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BIOPSY_RESULT = o.value_text where o.concept_id = @BIOPSY_RESULT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Lymphadenopathy_Coded = concept_name(o.value_coded, 'en') where o.concept_id = @Lymphadenopathy_Coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_general_oncologic_history_symptom = o.value_text where o.concept_id = @Other_general_oncologic_history_symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEMATOCRIT = o.value_numeric where o.concept_id = @HEMATOCRIT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LYMPHOCYTES = o.value_numeric where o.concept_id = @LYMPHOCYTES;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Absolute_Neutrophil_Count = o.value_numeric where o.concept_id = @Absolute_Neutrophil_Count;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_HEENT_Symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_HEENT_Symptoms;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_HEENT_problem = o.value_text where o.concept_id = @Other_HEENT_problem;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_Chest_Symptom = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_Chest_Symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_skin_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_skin_symptoms;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Abdominal_mass_location = o.value_text where o.concept_id = @Abdominal_mass_location;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Abdominal_mass_size_biggest_dimension = o.value_numeric where o.concept_id = @Abdominal_mass_size_biggest_dimension;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Extremity_mass_location = o.value_text where o.concept_id = @Extremity_mass_location;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Extremity_mass_size_biggest_dimension = o.value_numeric where o.concept_id = @Extremity_mass_size_biggest_dimension;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Skin_abnormality = o.value_text where o.concept_id = @Skin_abnormality;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SOCIO_ECONOMIC_ASSISTANCE_ALREADY_RECEIVED = concept_name(o.value_coded, 'en') where o.concept_id = @SOCIO_ECONOMIC_ASSISTANCE_ALREADY_RECEIVED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_Gastrointestinal_Symptom = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_Gastrointestinal_Symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chemo_facility = o.value_text where o.concept_id = @Chemo_facility;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Radiation_Facility = o.value_text where o.concept_id = @Radiation_Facility;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_GENERAL_EXAM_FINDINGS = o.value_text where o.concept_id = @OTHER_GENERAL_EXAM_FINDINGS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Radiation_description = o.value_text where o.concept_id = @Radiation_description;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_GI_oncologic_history_symptom = o.value_text where o.concept_id = @Other_GI_oncologic_history_symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_lymphadenopathy = o.value_text where o.concept_id = @Other_lymphadenopathy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mode_of_assessment_non_coded = o.value_text where o.concept_id = @Mode_of_assessment_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Exit_Notes = o.value_text where o.concept_id = @Exit_Notes;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_referred_to_where = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_referred_to_where;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reason_for_hospital_admission_non_coded = o.value_text where o.concept_id = @Reason_for_hospital_admission_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Splenomegaly_size = o.value_numeric where o.concept_id = @Splenomegaly_size;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CREATININE = o.value_numeric where o.concept_id = @SERUM_CREATININE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_GLUTAMIC_PYRUVIC_TRANSAMINASE = o.value_numeric where o.concept_id = @SERUM_GLUTAMIC_PYRUVIC_TRANSAMINASE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_GLUTAMIC_OXALOACETIC_TRANSAMINASE = o.value_numeric where o.concept_id = @SERUM_GLUTAMIC_OXALOACETIC_TRANSAMINASE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Lung_abnormality_text = o.value_text where o.concept_id = @Lung_abnormality_text;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DIAGNOSIS = o.value_text where o.concept_id = @DIAGNOSIS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TOTAL_BILIRUBIN = o.value_numeric where o.concept_id = @TOTAL_BILIRUBIN;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DIRECT_BILIRUBIN = o.value_numeric where o.concept_id = @DIRECT_BILIRUBIN;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_NAME = o.value_text where o.concept_id = @OTHER_LAB_TEST_NAME;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_LAB_TEST_RESULT = o.value_text where o.concept_id = @OTHER_LAB_TEST_RESULT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CARDIOVASCULAR_SYSTEM_COMMENT = o.value_text where o.concept_id = @CARDIOVASCULAR_SYSTEM_COMMENT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_skin_oncologic_history_symptom = o.value_text where o.concept_id = @Other_skin_oncologic_history_symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_vascular_or_musculoskeletal_oncologic_history_symptom = o.value_text where o.concept_id = @Other_vascular_or_musculoskeletal_oncologic_history_symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_UREA_NITROGEN = o.value_numeric where o.concept_id = @BLOOD_UREA_NITROGEN;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LOCATION_OF_DEATH_NON_CODED = o.value_text where o.concept_id = @LOCATION_OF_DEATH_NON_CODED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Date_of_Death_is_Estimated = concept_name(o.value_coded, 'en') where o.concept_id = @Date_of_Death_is_Estimated;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LOCATION_OF_DEATH = concept_name(o.value_coded, 'en') where o.concept_id = @LOCATION_OF_DEATH;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.METHOD_OF_FAMILY_PLANNING = concept_name(o.value_coded, 'en') where o.concept_id = @METHOD_OF_FAMILY_PLANNING;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Shape_of_mass = concept_name(o.value_coded, 'en') where o.concept_id = @Shape_of_mass;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Breast_Surgery_History_coded = concept_name(o.value_coded, 'en') where o.concept_id = @Breast_Surgery_History_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Anterior_posterior = o.value_numeric where o.concept_id = @Anterior_posterior;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Indication_for_ultrasound = concept_name(o.value_coded, 'en') where o.concept_id = @Indication_for_ultrasound;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_Pregnant_coded = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_Pregnant_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Acoustic_Transmissioin = concept_name(o.value_coded, 'en') where o.concept_id = @Acoustic_Transmissioin;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Orientation = concept_name(o.value_coded, 'en') where o.concept_id = @Orientation;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.mass_felt_also_seen_in_ultrasound = concept_name(o.value_coded, 'en') where o.concept_id = @mass_felt_also_seen_in_ultrasound;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Internal_Echo_Texture = concept_name(o.value_coded, 'en') where o.concept_id = @Internal_Echo_Texture;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Margins = concept_name(o.value_coded, 'en') where o.concept_id = @Margins;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mass_visible = concept_name(o.value_coded, 'en') where o.concept_id = @Mass_visible;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.location_of_mass_from_center_of_nipple = o.value_numeric where o.concept_id = @location_of_mass_from_center_of_nipple;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reason_of_ultrasound_follow_up = concept_name(o.value_coded, 'en') where o.concept_id = @Reason_of_ultrasound_follow_up;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Side_of_complaint_ultrasound = concept_name(o.value_coded, 'en') where o.concept_id = @Side_of_complaint_ultrasound;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_Lactating_coded = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_Lactating_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.clock_face = o.value_text where o.concept_id = @clock_face;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Transverse_Anti_radial = o.value_numeric where o.concept_id = @Transverse_Anti_radial;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Long_Radial = o.value_numeric where o.concept_id = @Long_Radial;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Assessment = o.value_text where o.concept_id = @Other_Assessment;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TYPE_OF_VISIT_NON_CODED = o.value_text where o.concept_id = @TYPE_OF_VISIT_NON_CODED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Breast_mass = concept_name(o.value_coded, 'en') where o.concept_id = @Breast_mass;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Solid_mass = concept_name(o.value_coded, 'en') where o.concept_id = @Solid_mass;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Breast_Surgery_History_non_coded = o.value_text where o.concept_id = @Breast_Surgery_History_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.assessment_coded = concept_name(o.value_coded, 'en') where o.concept_id = @assessment_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_neck_symptom = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_neck_symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.referral_hospital_construct = o.value_numeric where o.concept_id = @referral_hospital_construct;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LOCATION_OF_ABDOMINAL_TENDERNESS = concept_name(o.value_coded, 'en') where o.concept_id = @LOCATION_OF_ABDOMINAL_TENDERNESS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Clinican_notes = o.value_text where o.concept_id = @Clinican_notes;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_Neurologic_Psychologic_Symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_Neurologic_Psychologic_Symptoms;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Genital_Abnormalities = concept_name(o.value_coded, 'en') where o.concept_id = @Genital_Abnormalities;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LESION_SIZE_largest_dimension = o.value_numeric where o.concept_id = @LESION_SIZE_largest_dimension;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Ultrasound_comments = o.value_text where o.concept_id = @Ultrasound_comments;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Ultrasound = concept_name(o.value_coded, 'en') where o.concept_id = @Ultrasound;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.district_hospital_construct = o.value_numeric where o.concept_id = @district_hospital_construct;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Medical_Imaging_Comment = o.value_text where o.concept_id = @Medical_Imaging_Comment;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Medical_Imaging = concept_name(o.value_coded, 'en') where o.concept_id = @Medical_Imaging;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Result_of_Call = concept_name(o.value_coded, 'en') where o.concept_id = @Result_of_Call;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reason_for_missed_visit = concept_name(o.value_coded, 'en') where o.concept_id = @Reason_for_missed_visit;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.REASON_OF_CALLING_PATIENT = concept_name(o.value_coded, 'en') where o.concept_id = @REASON_OF_CALLING_PATIENT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Location_where_test_took_place_non_coded = o.value_text where o.concept_id = @Location_where_test_took_place_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_reason_for_referral = o.value_text where o.concept_id = @Other_reason_for_referral;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_extremity_abnormalities = o.value_text where o.concept_id = @Other_extremity_abnormalities;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Neoadjuvant = concept_name(o.value_coded, 'en') where o.concept_id = @Neoadjuvant;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Neoadjuvant_Type = concept_name(o.value_coded, 'en') where o.concept_id = @Neoadjuvant_Type;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Health_center_construct = o.value_numeric where o.concept_id = @Health_center_construct;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Scheduled_Inpatient_visit_Date = o.value_datetime where o.concept_id = @Scheduled_Inpatient_visit_Date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Abnormal_non_palpable_lymph_node = concept_name(o.value_coded, 'en') where o.concept_id = @Abnormal_non_palpable_lymph_node;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Dates_of_Ultrasound_follow_up = o.value_datetime where o.concept_id = @Dates_of_Ultrasound_follow_up;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Axillary_mass = concept_name(o.value_coded, 'en') where o.concept_id = @Axillary_mass;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LABORATORY_TESTS_OTHER = o.value_text where o.concept_id = @LABORATORY_TESTS_OTHER;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Nodule_description = o.value_text where o.concept_id = @Nodule_description;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Nodule_size_cm = o.value_numeric where o.concept_id = @Nodule_size_cm;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_vascular__musculoskeletal_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_vascular__musculoskeletal_symptoms;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OEDEMA = concept_name(o.value_coded, 'en') where o.concept_id = @OEDEMA;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TUBERCULOSIS_DIAGNOSIS_DATE = o.value_datetime where o.concept_id = @TUBERCULOSIS_DIAGNOSIS_DATE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Facility = o.value_text where o.concept_id = @Facility;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Neurologic_or_psychiatric_oncologic_history_symptom = o.value_text where o.concept_id = @Other_Neurologic_or_psychiatric_oncologic_history_symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Next_Outpatient_RDV = concept_name(o.value_coded, 'en') where o.concept_id = @Next_Outpatient_RDV;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Health_Facility_Text = o.value_text where o.concept_id = @Health_Facility_Text;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_result_of_call = o.value_text where o.concept_id = @Other_result_of_call;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Reason_patient_did_not_think_it_is_necessary_to_come_in = o.value_text where o.concept_id = @Other_Reason_patient_did_not_think_it_is_necessary_to_come_in;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_reason_for_missing_visit = o.value_text where o.concept_id = @Other_reason_for_missing_visit;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Laboratory_tests_other_result = o.value_text where o.concept_id = @Laboratory_tests_other_result;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Abnormal_Heart = o.value_text where o.concept_id = @Abnormal_Heart;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Cortical_thickness = o.value_numeric where o.concept_id = @Cortical_thickness;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.referred_to = o.value_text where o.concept_id = @referred_to;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_Urinary_Symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_Urinary_Symptoms;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_urinary_oncologic_history_symptom = o.value_text where o.concept_id = @Other_urinary_oncologic_history_symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_neck_oncologic_history_symptom = o.value_text where o.concept_id = @Other_neck_oncologic_history_symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_chest_oncologic_history_symptom = o.value_text where o.concept_id = @Other_chest_oncologic_history_symptom;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_NCD_follow_up_facility = o.value_text where o.concept_id = @Other_NCD_follow_up_facility;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.surface_of_mass_form_skin_surface = o.value_numeric where o.concept_id = @surface_of_mass_form_skin_surface;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Date_of_breast_Follow_up_exam = o.value_datetime where o.concept_id = @Date_of_breast_Follow_up_exam;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ABSCESS = concept_name(o.value_coded, 'en') where o.concept_id = @ABSCESS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.B_HCG_Unit = concept_name(o.value_coded, 'en') where o.concept_id = @B_HCG_Unit;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Location_of_Metasteses = o.value_text where o.concept_id = @Other_Location_of_Metasteses;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Number_of_metasteses = concept_name(o.value_coded, 'en') where o.concept_id = @Number_of_metasteses;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Adjuvant_Type = concept_name(o.value_coded, 'en') where o.concept_id = @Adjuvant_Type;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Tumor_Resection_Margins = concept_name(o.value_coded, 'en') where o.concept_id = @Tumor_Resection_Margins;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Lymph_nodes_with_malignancy = o.value_numeric where o.concept_id = @Lymph_nodes_with_malignancy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Lymph_nodes_sampled = o.value_numeric where o.concept_id = @Lymph_nodes_sampled;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.X_Ray_chest_comments = o.value_text where o.concept_id = @X_Ray_chest_comments;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Hepatomegaly_size = o.value_numeric where o.concept_id = @Hepatomegaly_size;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Planned_changes_to_protocol_treatment_plan = o.value_text where o.concept_id = @Planned_changes_to_protocol_treatment_plan;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Palliative_Cancer_Therapy_Type = concept_name(o.value_coded, 'en') where o.concept_id = @Palliative_Cancer_Therapy_Type;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_reason_patient_did_not_wish_to_continue_treatment = o.value_text where o.concept_id = @Other_reason_patient_did_not_wish_to_continue_treatment;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_indication_of_ultrasound = o.value_text where o.concept_id = @Other_indication_of_ultrasound;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Death_Characteristics = concept_name(o.value_coded, 'en') where o.concept_id = @Death_Characteristics;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Next_inpatient_RDV = concept_name(o.value_coded, 'en') where o.concept_id = @Next_inpatient_RDV;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SOCIO_ECONOMIC_ASSISTANCE = concept_name(o.value_coded, 'en') where o.concept_id = @SOCIO_ECONOMIC_ASSISTANCE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.diagnosis_confidence_2 = concept_name(o.value_coded, 'en') where o.concept_id = @diagnosis_confidence_2;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.study_site_for_CT_scan_of_Chest_Abdomen_Pelvis_non_coded = o.value_text where o.concept_id = @study_site_for_CT_scan_of_Chest_Abdomen_Pelvis_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_operative_findings = o.value_text where o.concept_id = @Other_operative_findings;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Lymphocyte_Percent = o.value_numeric where o.concept_id = @Lymphocyte_Percent;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ERYTHROCYTE_SEDIMENTATION_RATE = o.value_numeric where o.concept_id = @ERYTHROCYTE_SEDIMENTATION_RATE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ABSOLUTE_LYMPHOCYTE_COUNT = o.value_numeric where o.concept_id = @ABSOLUTE_LYMPHOCYTE_COUNT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Neoadjuvant_cancer_thearpy = o.value_text where o.concept_id = @Other_Neoadjuvant_cancer_thearpy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Positive_Philadelphia_Chromosome_Assessment_Method = concept_name(o.value_coded, 'en') where o.concept_id = @Positive_Philadelphia_Chromosome_Assessment_Method;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Induction_Chemotherapy_Status = concept_name(o.value_coded, 'en') where o.concept_id = @Induction_Chemotherapy_Status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.KS_CLINICAL_EXAM_FINDINGS = concept_name(o.value_coded, 'en') where o.concept_id = @KS_CLINICAL_EXAM_FINDINGS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TYPE_OF_LYMPH_NODES = concept_name(o.value_coded, 'en') where o.concept_id = @TYPE_OF_LYMPH_NODES;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ANTIRETROVIRAL_TREATMENT_STATUS = concept_name(o.value_coded, 'en') where o.concept_id = @ANTIRETROVIRAL_TREATMENT_STATUS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DATE_OF_CD4_COUNT = o.value_datetime where o.concept_id = @DATE_OF_CD4_COUNT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_next_inpatient_visit_reasons = o.value_text where o.concept_id = @Other_next_inpatient_visit_reasons;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Tumor_of_TNM = o.value_text where o.concept_id = @Tumor_of_TNM;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Metasteses_of_TNM = o.value_text where o.concept_id = @Metasteses_of_TNM;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Node_of_TNM = o.value_text where o.concept_id = @Node_of_TNM;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Adjuvant = concept_name(o.value_coded, 'en') where o.concept_id = @Adjuvant;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Location_of_Surgery = concept_name(o.value_coded, 'en') where o.concept_id = @Location_of_Surgery;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Nervous_system_abnormality = o.value_text where o.concept_id = @Nervous_system_abnormality;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Extremity_mass_size_smallest_dimension = o.value_numeric where o.concept_id = @Extremity_mass_size_smallest_dimension;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Head_and_neck_mass_size_smallest_dimension = o.value_numeric where o.concept_id = @Head_and_neck_mass_size_smallest_dimension;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Abdominal_mass_size_smallest_dimension = o.value_numeric where o.concept_id = @Abdominal_mass_size_smallest_dimension;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HER2_Status = concept_name(o.value_coded, 'en') where o.concept_id = @HER2_Status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Location_of_Surgery = o.value_text where o.concept_id = @Other_Location_of_Surgery;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ER_ = o.value_numeric where o.concept_id = @ER_;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LESION_SIZE_smallest_dimension = o.value_numeric where o.concept_id = @LESION_SIZE_smallest_dimension;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.other_follow_up_location = o.value_text where o.concept_id = @other_follow_up_location;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_SODIUM = o.value_numeric where o.concept_id = @SERUM_SODIUM;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_POTASSIUM = o.value_numeric where o.concept_id = @SERUM_POTASSIUM;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CHLORIDE = o.value_numeric where o.concept_id = @SERUM_CHLORIDE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_CALCIUM = o.value_numeric where o.concept_id = @SERUM_CALCIUM;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Tissue_biopsy = concept_name(o.value_coded, 'en') where o.concept_id = @Tissue_biopsy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PR_ = o.value_numeric where o.concept_id = @PR_;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_ECONOMIC_ASSISTANCE_ALREADY_RECEIVED = o.value_text where o.concept_id = @OTHER_ECONOMIC_ASSISTANCE_ALREADY_RECEIVED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_SURGERY_TYPE_NON_CODED = o.value_text where o.concept_id = @OTHER_SURGERY_TYPE_NON_CODED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.URIC_ACID = o.value_numeric where o.concept_id = @URIC_ACID;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Pathologic_Diagnosis = o.value_text where o.concept_id = @Other_Pathologic_Diagnosis;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_adjuvant_type = o.value_text where o.concept_id = @Other_adjuvant_type;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Location_of_endoscopy_Non_coded = o.value_text where o.concept_id = @Location_of_endoscopy_Non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Number_of_extranodal_disease_sites = concept_name(o.value_coded, 'en') where o.concept_id = @Number_of_extranodal_disease_sites;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Tumor_Diameter_largest = o.value_numeric where o.concept_id = @Tumor_Diameter_largest;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CSF_Cytology = concept_name(o.value_coded, 'en') where o.concept_id = @CSF_Cytology;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Bone_Marrow_Shows_Disease = concept_name(o.value_coded, 'en') where o.concept_id = @Bone_Marrow_Shows_Disease;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Aggressive_NHL_subtype = o.value_text where o.concept_id = @Other_Aggressive_NHL_subtype;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TREATMENT_PLAN_OTHER_REMARKS = o.value_text where o.concept_id = @TREATMENT_PLAN_OTHER_REMARKS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pathologic_Oncology_Stage = concept_name(o.value_coded, 'en') where o.concept_id = @Pathologic_Oncology_Stage;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pathologic_Metastases_of_TNM = o.value_text where o.concept_id = @Pathologic_Metastases_of_TNM;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pathologic_Tumor_of_TNM = o.value_text where o.concept_id = @Pathologic_Tumor_of_TNM;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pathologic_Node_of_TNM = o.value_text where o.concept_id = @Pathologic_Node_of_TNM;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diagnosis_Comment = o.value_text where o.concept_id = @Diagnosis_Comment;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Did_neoadjuvant_chemo_occur_before_surgery_for_pathology = concept_name(o.value_coded, 'en') where o.concept_id = @Did_neoadjuvant_chemo_occur_before_surgery_for_pathology;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Imaging_studies_non_coded = o.value_text where o.concept_id = @Imaging_studies_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Cancer_other = o.value_text where o.concept_id = @Cancer_other;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NHL__Other = o.value_text where o.concept_id = @NHL__Other;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reason_for_visit_non_coded = o.value_text where o.concept_id = @Reason_for_visit_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Discharge_diagnosis_comments = o.value_text where o.concept_id = @Discharge_diagnosis_comments;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Benign = o.value_text where o.concept_id = @Other_Benign;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SERUM_GLUCOSE = o.value_numeric where o.concept_id = @SERUM_GLUCOSE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Head_and_Neck_Cancer__Other = o.value_text where o.concept_id = @Head_and_Neck_Cancer__Other;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Germ_Cell_Tumor__Other = o.value_text where o.concept_id = @Germ_Cell_Tumor__Other;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Leukemia__Other = o.value_text where o.concept_id = @Leukemia__Other;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Outpatient_visit_Rwanda_Cancer_Center_Rwanda_Military_Hospital = o.value_datetime where o.concept_id = @Outpatient_visit_Rwanda_Cancer_Center_Rwanda_Military_Hospital;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESPIRATORY_RATE = o.value_numeric where o.concept_id = @RESPIRATORY_RATE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BLOOD_OXYGEN_SATURATION = o.value_numeric where o.concept_id = @BLOOD_OXYGEN_SATURATION;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Planned_treatment = concept_name(o.value_coded, 'en') where o.concept_id = @Planned_treatment;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chemotherapy_Treatment_start_date = o.value_datetime where o.concept_id = @Chemotherapy_Treatment_start_date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Peciatric_Non_chemotherapy = o.value_datetime where o.concept_id = @Peciatric_Non_chemotherapy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Institution_Providing_Radiotherapy = concept_name(o.value_coded, 'en') where o.concept_id = @Institution_Providing_Radiotherapy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.File_Number = o.value_numeric where o.concept_id = @File_Number;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Primary_Tumor_Diagnosis = o.value_text where o.concept_id = @Primary_Tumor_Diagnosis;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Cancer_Stage_Diagnosed_Externally = o.value_text where o.concept_id = @Cancer_Stage_Diagnosed_Externally;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Treatment_start_date = o.value_datetime where o.concept_id = @Treatment_start_date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Treatment_end_date = o.value_datetime where o.concept_id = @Treatment_end_date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oncology_treatment_status = concept_name(o.value_coded, 'en') where o.concept_id = @Oncology_treatment_status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Treatment_response = concept_name(o.value_coded, 'en') where o.concept_id = @Treatment_response;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Total_dose = o.value_text where o.concept_id = @Total_dose;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Number_of_fractions = o.value_numeric where o.concept_id = @Number_of_fractions;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Simulation_method = concept_name(o.value_coded, 'en') where o.concept_id = @Simulation_method;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_treatment_technique = o.value_text where o.concept_id = @Other_treatment_technique;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Target_tumor = o.value_text where o.concept_id = @Target_tumor;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_REFERRING_PERSON = o.value_text where o.concept_id = @NAME_OF_REFERRING_PERSON;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Radiation_form_completed_date = o.value_datetime where o.concept_id = @Radiation_form_completed_date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Consent_signed = concept_name(o.value_coded, 'en') where o.concept_id = @Consent_signed;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Exam_findings = o.value_text where o.concept_id = @Exam_findings;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pathology_Sample_Drop_Off_Status = concept_name(o.value_coded, 'en') where o.concept_id = @Pathology_Sample_Drop_Off_Status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pathology_sample_status = concept_name(o.value_coded, 'en') where o.concept_id = @Pathology_sample_status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RADIOLOGY_FINDINGS = o.value_text where o.concept_id = @RADIOLOGY_FINDINGS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diagnosis_or_problem_non_coded = o.value_text where o.concept_id = @Diagnosis_or_problem_non_coded;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LABS_NON_CODED = o.value_text where o.concept_id = @LABS_NON_CODED;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Brachytherapy = concept_name(o.value_coded, 'en') where o.concept_id = @Brachytherapy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Title_of_referring_person = o.value_text where o.concept_id = @Title_of_referring_person;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.acute_side_effects_and_management = concept_name(o.value_coded, 'en') where o.concept_id = @acute_side_effects_and_management;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Treatment_technique = concept_name(o.value_coded, 'en') where o.concept_id = @Treatment_technique;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CONCURRENT_CHEMOTHERAPY_or_OTHER_SYSTEMIC_TREATMENT = concept_name(o.value_coded, 'en') where o.concept_id = @CONCURRENT_CHEMOTHERAPY_or_OTHER_SYSTEMIC_TREATMENT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CISPLATIN = o.value_numeric where o.concept_id = @CISPLATIN;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Cisplatin_schedule = concept_name(o.value_coded, 'en') where o.concept_id = @Cisplatin_schedule;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pathology_Referral_Status = concept_name(o.value_coded, 'en') where o.concept_id = @Pathology_Referral_Status;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pediatric_Oncology_Visit = o.value_datetime where o.concept_id = @Pediatric_Oncology_Visit;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Accession_Number = o.value_text where o.concept_id = @Accession_Number;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Specimen_Submission_Date = o.value_datetime where o.concept_id = @Specimen_Submission_Date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Sending_Physician = o.value_text where o.concept_id = @Sending_Physician;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Biopsy_Location = o.value_text where o.concept_id = @Other_Biopsy_Location;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Organ_System = concept_name(o.value_coded, 'en') where o.concept_id = @Organ_System;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Organ = concept_name(o.value_coded, 'en') where o.concept_id = @Organ;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_tests_or_procedures = o.value_text where o.concept_id = @Other_tests_or_procedures;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Gross_Description = o.value_text where o.concept_id = @Gross_Description;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.pathology_results_approved = concept_name(o.value_coded, 'en') where o.concept_id = @pathology_results_approved;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.pathology_request_encounter_UUID = o.value_text where o.concept_id = @pathology_request_encounter_UUID;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Specimen_Detail = o.value_text where o.concept_id = @Specimen_Detail;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.COMMENTS_AT_CONCLUSION_OF_EXAMINATION = o.value_text where o.concept_id = @COMMENTS_AT_CONCLUSION_OF_EXAMINATION;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Microscopic_Examination = o.value_text where o.concept_id = @Microscopic_Examination;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pathology_Comment = o.value_text where o.concept_id = @Pathology_Comment;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CHW_Phone_Number = o.value_text where o.concept_id = @CHW_Phone_Number;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DATE_INTAKE_FORM_WAS_FILLED_OUT = o.value_datetime where o.concept_id = @DATE_INTAKE_FORM_WAS_FILLED_OUT;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_received_chemotherapy = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_received_chemotherapy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other = o.value_text where o.concept_id = @Other;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.skin_breakdown = o.value_text where o.concept_id = @skin_breakdown;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NAUSEA = o.value_text where o.concept_id = @NAUSEA;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FATIGUE = o.value_text where o.concept_id = @FATIGUE;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PATIENT_STATUS = concept_name(o.value_coded, 'en') where o.concept_id = @PATIENT_STATUS;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Pediatric_Chemotherapy = o.value_datetime where o.concept_id = @Pediatric_Chemotherapy;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Radiology_Date = o.value_datetime where o.concept_id = @Radiology_Date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Difficulty_swallowing = o.value_text where o.concept_id = @Difficulty_swallowing;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Mucositis = o.value_text where o.concept_id = @Mucositis;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Capecitabine_schedule = concept_name(o.value_coded, 'en') where o.concept_id = @Capecitabine_schedule;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DIARRHEA = o.value_text where o.concept_id = @DIARRHEA;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Neutropenia = o.value_text where o.concept_id = @Neutropenia;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Capecitabine = o.value_numeric where o.concept_id = @Capecitabine;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Palliation_Treatment_start_date = o.value_datetime where o.concept_id = @Palliation_Treatment_start_date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Surgery_Treatment_start_date = o.value_datetime where o.concept_id = @Surgery_Treatment_start_date;
update temp_oncology_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Treatment_starting_before_staging_complete = concept_name(o.value_coded, 'en') where o.concept_id = @Treatment_starting_before_staging_complete;



select * from temp_oncology_encounters;