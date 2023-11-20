# First create a temporary table to hold the data to export
create temporary table temp_PDC_encounters (
    PATIENT_ID int,
    PATIENT_UUID text,
    ENCOUNTER_ID int,
    ENCOUNTER_UUID text,
    FORM text,
    ENCOUNTER_DATE date,
    NAMES_AND_FIRST_NAMES_OF_CONTACT text,
    RELATIONSHIP_OF_RELATIVE_TO_PATIENT text,
    CAREGIVER_MARITAL_STATUS text,
    BIRTH_WEIGHT float,
    UBUDEHE_CATEGORY text,
    HOW_DID_THE_PATIENT_TRAVEL_TO_CLINIC text,
    TELEPHONE_NUMBER text,
    RETURN_VISIT_DATE date,
    Reasons_for_Referral text,
    FIRST_NAME_OF_MOTHER text,
    LAST_NAME_OF_MOTHER text,
    TELEPHONE_NUMBER_OF_CONTACT text,
    Gestational_age_at_birth_in_weeks float,
    Parent_Seropositive_Status text,
    PERINATAL_INFECTION text,
    TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL text,
    WEIGHT__KG_ float,
    RESPIRATORY_RATE float,
    HEIGHT__CM_ float,
    ABNORMAL_TEMPERATURE_FOR_AGE_RANGE text,
    TEMPERATURE__C_ float,
    HEAD_CIRCUMFERENCE float,
    INTERVAL_GROWTH float,
    NEED_FOLLOW_UP text,
    DEMOGRAPHIC_CHANGES text,
    CORRECTED_AGE float,
    CONVULSIONS_DANGER_SIGNS_PRESENT text,
    STIFF_NECK_OR_BULGING_FONTANELLES_DANGER_SIGNS_PRESENT text,
    LETHARGY_OR_UNRESPONSIVENESS_DANGER_SIGNS_PRESENT text,
    UMBILICAL_CORD_REDNESS_DANGER_SIGNS text,
    BREATHING_DANGER_SIGNS_PRESENT text,
    SOCIO_ECONOMIC_ASSISTANCE text,
    SOCIO_ECONOMIC_ASSISTANCE_RECOMMENDED text,
    RECEIVED_AT_LEAST_ONE_ECD_EDUCATION_SESSION text,
    LARGE_MUSCLE_MOVEMENTS text,
    COMMUNICATION text,
    PERSONAL_SOCIAL_coded text,
    SOCIO_ECONOMIC_ASSISTANCE_ALREADY_RECEIVED text,
    SOCIO_ECONOMIC_ASSISTANCE_NON_CODED text,
    RELATIONSHIP_OF_RELATIVE_TO_PATIENT__NON_CODED text,
    SMALL_MUSCLE_MOVEMENTS text,
    PROBLEM_SOLVING text,
    AGE_USED text,
    INTERVAL_GROWTH_CODED text,
    HEAD_CIRCUMFERENCE_CODED text,
    PDC_DANGER_SIGNS_ACTION_TAKEN text,
    Weight_for_age_z_score float,
    Height_for_age_z_score float,
    REASON_FOR_DISCHARGE text,
    Weight_for_height_percentile float,
    HC_FOR_AGE_Z_SCORE float,
    Age_of_primary_care_taker float,
    TRANSFER_OUT_TO text,
    REASON_FOR_NOT_DOING_FOLLOW_UP text,
    Reasons_for_Referral__non_coded text,
    PDC_WtAge_Z_score text,
    PDC_WtHt_Z_score text,
    PDC_HeightAge_Z_score text,
    PDC_HCAge_Z_score text,
    Play_activities_recommended text,
    Social_Worker text,
    Solutions_Provided text,
    Communication_Activities_recommended text,
    Concerns_Shared text,
    ECD_Session_Type text,
    Delay text,
    Family_Support text,
    Maternal_Literacy text,
    Temperament_strengths text,
    Financial_Strength text,
    DATE_OF_STARTING_FOLLOW_UP date,
    caregiver_play_or_teach_child_directly_in_the_past_3_days text,
    Caregiver_participate_in_morning_group_session text,
    Does_Vomiting_everything text,
    Palmo_plantar_pallor_Danger_signs_present text,
    Child_Feeding_On text,
    History_of_fever text,
    Diarrhea_Danger_signs text,
    Bilateral_pitting_oedema_danger_signs_present text,
    Dehydration_Danger_signs_Present text,
    Require_malnutritiongrowth_failure_treatment text,
    Feeding_difficulty text,
    PDC_Malnutrition_status text,
    PDC_Infant_Formula text,
    Other_counselled_on text,
    counseling_on text,
    Current_Visit_Classification text,
    Completed_by text,
    Feeding_Intervention text,
    when_to_start_treatment_coded_ text,
    Foodsliquids_only_child_feeding_on text,
    Way_of_breastfeeding text,
    Growth_Curve text,
    Previous_visit_Classification text,
    Maternal_Food_Package text,
    Other_liquidsfoods_with_breastmilk_child_feeding_on text,
    specify_on_feeding_difficulty text,
    Maternal_Concerns text,
    Material_MUAC__MM_ text,
    Personal_Social float,
    Communication_score float,
    Problem_solving_score float,
    Small_Muscle_Movements_Score float,
    Large_Muscle_Movement_Score float,
    Other_Maternal_Concerns text,
    Assessment_Needed_By text,
    Other_Feeding_Intervetion text,
    Maternal_Food_Package_End_Time date,
    years_of_schooling_completed_by_caregiver float,
    Number_of_dependents_under_eighteen float,
    Patient_has_had_feeding_difficulty text,
    Patient_had_recorded_feeding_difficulty_on_encounter_with_date date,
    MINERALS_IRON_SUPPLEMENTS text,
    BREASTFEEDING text,
    Oxygen_Duration text,
    Breastmilk text,
    Admission_Date date,
    Food_Support_Received text,
    Discharge_Date date,
    Antibiotics_duration text,
    Anticonvulsants_Received_on_Discharge text,
    INFANT_FORMULA text,
    OTHER_INSURANCE_TYPE__NON_CODED text,
    ARE_YOU_ENROLLED_IN_A_MUTUELLE text,
    RESULT_OF_HIV_TEST text,
    BIRTH_LOCATION_TYPE text,
    Apgar_5_minute float,
    Apgar_1_minute float,
    Apgar_10_minutes float,
    NEVIRAPINE text,
    Anticonvulsants_Received_Inpatient text,
    Number_of_Cans_Provided text,
    Currently_on_medication text,
    Type_of_medication_currently_on text,
    INFANT_FEEDING_METHOD text,
    Dose text,
    Convulstions_Duration text,
    On_ARVs text,
    NAME_OF_REFERRING_SITE text,
    Cup_Feeding text,
    Anticonvulsant_dose__mgday_ float,
    Discharge_Comments text,
    Antibiotic_therapy text,
    patient_reffered_for_vision text,
    Other_Feeding_Method text,
    Other_medication text,
    patient_reffered_for_Hearing text,
    METHOD_OF_DELIVERY text,
    REASON_FOR_VISIT text,
    unable_to_feed text,
    Coughing_or_tearing_while_feeding text,
    Rigid_muscles_or_jaw_clenching_that_prevents_feeding text,
    TIME_UNITS text,
    Chronological_Age float,
    Hydrocephalus text,
    tires_quickly_when_feeding text,
    Excessive_sweating_when_feeding text,
    Food_frequency__quantity_concerns text,
    Responsive_Feeding text,
    Feeding_Difficulties text,
    Food_texture_concerns text,
    Food_Variety_Concerns text,
    Breastfeeding_status text,
    Non_nutritious_foods text,
    Kangaroo_Mother_Care_Comments text,
    Non_Breastfeeding_Concerns text,
    Child_unable_to_fix_and_follow_object_with_eyes text,
    PROBLEM_LIST text,
    Breastfed_and_non_breastfed_concerns text,
    Lazy_eye_or_gaze_angled_or_wandering_or_squinting text,
    Kangaroo_Mother_Care_done_at_home text,
    Iron_Supplement text,
    Eye_concerns_by_caregiver text,
    Paper_Rub_Test text,
    Counselled_on_Kangaroo_Mother_Care text,
    Undescended_Testicle text,
    Difficulty_Breathing text,
    Any_hearing_concerns text,
    History_of_Convulsions text,
    GMCD_Administered text,
    PDC_Visit_Period text,
    Child_unable_to_respond_to_noise text,
    OTHER_FAMILY_PLANNING_METHOD__NON_CODED text,
    Iron_Dose text,
    Breastfeeding_Concerns text,
    Iron_supplement_level text,
    FAMILY_PLANNING text,
    Clinican_notes text,
    Status_of_History_of_Convulsions text,
    Action_taken_based_on_GMCD text,
    Refer_from_PDC text,
    PDC_Guide_to_Monitoring_Child_Development__GMCD__concerns text,
    GMCD_Classification text,
    Other_Problem_Non_Coded text,
    Clinical_response_to_convulsions text,
    Convulsions_on_anticonvulsants text,
    Does_child_need_to_hold_objects_close_to_face_to_see text,
    Referred_to_Neurosurgery text,
    feeding_Assessment text,
    Anticonvulsants_status text,
    Action_based_on_no_family_planning text,
    Adjust_dose_for_current_convulsions text,
    Changes_needed_to_anticonvulsants text,
    Prolonged_Rupture_Membrane text,
    CPAP text,
    Discharge_Weight float,
    Supplemental_Oxygen text,
    Maternal_Fever text,
    Enhanced_calorie_feeding text,
    Adjust_dose_based_on_weight text,
    _Presence_Of_Meconium text,
    Drugs_discontinued text,
    BIRTH_LOCATION_TYPE__NON_CODED text,
    ear_pain_or_ear_discharge text,
    persistent_diarrhea text,
    neck_pain__weakness_or_tingling_in_armslegs text,
    sign_of_obstructive_sleep_apnea text,
    pass_stool text,
    Severe_feeding_problem text,
    WEIGHT_GAIN float,
    Surgery_Location__non_coded_ text,
    Anticonvulsant_Dose text,
    Anticonvulsant text,
    Other_feeding_difficulties text,
    ICP_signs text,
    HC_continuing_to_cross_z_score_lines text,
    Other_PDC_Referral text,
    Date_ECHOCARDIOGRAM_Taken date,
    DDB_ECHOCARDIOGRAPH_RESULT text,
    PATIENT_REFERRED_TO_DISTRICT_HOSPITAL text,
    Cleft_breastfeeding_counselling_provided text,
    Type_of_Defect text,
    Thyroid_test text,
    CONFIRMED_DIAGNOSIS text,
    delayed_passage_of_meconiumstool text,
    VACCINATIONS_RECEIVED text,
    POLIO_VACCINATION__INACTIVATED text,
    Reason_for_Referral_from_PDC text,
    VP_Shunt text,
    Signs_of_shunt_malfunction text,
    OTHER_TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL__NON_CODED text,
    COMPLETE_BLOOD_COUNT_Test_Done text,
    Anticipated_surgery_age text,
    SURGERY_STATUS text,
    Diagnosis_confirmation_date date,
    Diagnosis_confirmation_results text,
    CEREBRAL_PALSY text,
    Perinatal_Asphyxia text,
    Genetic_Syndrome_Diagnosis_confirmed text,
    developmental_regression text,
    localized_bone_pain text,
    Maternal_history_of_syphilis text,
    experienced_repeated_miscarriages text,
    ANEMIA text,
    HIV_exposed text,
    Hypothyroidism text,
    increase_or_decrease_in_tone_or_delays_in_motor_development text,
    referred_to_EIP_group text,
    Is_child_and_family_part_of_EIP_group text,
    Signs_of_shunt_infection text,
    Complete_blood_count_results_no_coded text,
    HIV_STATUS text,
    Assessment_of_other_abnormalities text,
    DATE_OF_SURGERY date,
    Date_surgery_completed date,
    HEMOGLOBIN float,
    PDC_Program_End_Reasons text,
    Concern_for_poor_breastfeeding text,
    Child_supervised_at_all_times_to_avoid_injuries text,
    ADHERENCE_TO_TAKING_MEDICATION text,
    appear_clean_and_cared_for text,
    Symptoms_of_or_concern_for_poor_interval_growth text,
    In_social_support_program text,
    Patient_receiving_correct_treatment text,
    spousefamily_supported_in_caring_for_the_child text,
    Use_of_non_physical_or_abusive_discipline_methods text,
    Parent_being_stigmatized_by_the_family_or_neighbors text,
    Home_environment_safe_from_potential_hazards_to_the_child text,
    Use_safe_household_items_as_toys_or_homemade_toys text,
    Concern_about_use_of_traditional_medicine text,
    In_nutrition_program_at_health_center text,
    summative_comments_and_recommendations text,
    Malnourished text,
    Safe_food_preparation_and_storage text,
    Food_supply text,
    Patient_kept_warm_adequately text,
    Soap_and_water_available_after_use_of_toilet text,
    Abnormal_signs_symptoms text,
    stimulating_age_appropriate_verbal_interactions_angaged text,
    Concern_about_illness text,
    Reason_for_home_visit text,
    DIARRHEA_CURRENT text,
    Meets_admission_criteria text,
    Other_Growth_and_nutrition_question text,
    Other_parental_concerns text,
    Other text,
    Reason_for_missed_visit text,
    ACCOMPAGNATEUR_PHONE_NUMBER text,
    demonstrated_concerning_home_environment_safety text,
    demonstrated_during_developmental___social_andor_familly_issues text,
    demonstrated_concerning_Growth_and_nutrition text,
    demonstrated_concerning_illness__thermoregulation text,
    Social_worker_will_return_on date,
    Other_recommendations text,
    Nurse_will_return_on date,
    Type_of_assistance_needed text,
    demostrated_concerning_loss_to_follow_up_or_missed_visit text,
    LAST_NAME_OF_COMMUNITY_HEALTH_WORKER__REPORTED text,
    Recommendations text,
    Other_concerns_about_home_environment_safery text,
    Other_exit_reason text,
    Requested_by_parent text,
    Parents_concern text,
    CHW_s_concern text,
    Health_Facility_Text text,
    Thyroid_test_results text,
    Date_of_Genetic_Syndrome_Diagnosis date,
    Genetic_Syndrome_Diagnosis_results text,
    demonstrated_concerning_parental_or_chw_request text,
    Assess_and_assist_frequency float
);

# Populate the "rows" of this table to contain all PDC encounters

insert into temp_PDC_encounters (patient_id,patient_uuid , encounter_id,encounter_uuid,FORM,ENCOUNTER_DATE)
select enc.patient_id,p.uuid, enc.encounter_id,enc.uuid,f.name,enc.encounter_datetime
from encounter enc
inner join person p on p.person_id=enc.patient_id
inner join form f on f.form_id=enc.form_id
inner join patient_program pp on pp.patient_id=enc.patient_id
where f.name in 
	(
        'PDC Referral Form','PDC Intake Visit','PDC Visit Form','PDC ECD Intervention Flowsheet','PDC ECD Intervention','PDC ECD Strengths',
        'PDC malnutrition Acute form','PDC malnutrition Growth Failure form','PDC feeding difficulty history','PDC SUMMARY','PDC Vaccines',
        'PDC Conditional Specific (Global Developmental Delay)','PDC Condition specific (Trisomy 21)','PDC Standard Visit Form',
        'PDC flowsheet','PDC Conditional Specific (Cleft Lip)','PDC Progress note','PDC Home Visit Form','PDC Exit'
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
         inner join temp_PDC_encounters t on t.encounter_id = o.encounter_id
where o.voided = 0
;

# Add indexes on these for further query performance
create index temp_obs_oi on temp_obs(obs_id);
create index temp_obs_ci1 on temp_obs(encounter_id, concept_id);
create index temp_obs_ci2 on temp_obs(obs_group_id, concept_id);

update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NAMES_AND_FIRST_NAMES_OF_CONTACT = o.value_text where o.concept_id = @NAMES_AND_FIRST_NAMES_OF_CONTACT;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RELATIONSHIP_OF_RELATIVE_TO_PATIENT = concept_name(o.value_coded, 'en') where o.concept_id = @RELATIONSHIP_OF_RELATIVE_TO_PATIENT;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CAREGIVER_MARITAL_STATUS = concept_name(o.value_coded, 'en') where o.concept_id = @CAREGIVER_MARITAL_STATUS;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BIRTH_WEIGHT = o.value_numeric where o.concept_id = @BIRTH_WEIGHT;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.UBUDEHE_CATEGORY = concept_name(o.value_coded, 'en') where o.concept_id = @UBUDEHE_CATEGORY;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HOW_DID_THE_PATIENT_TRAVEL_TO_CLINIC = concept_name(o.value_coded, 'en') where o.concept_id = @HOW_DID_THE_PATIENT_TRAVEL_TO_CLINIC;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TELEPHONE_NUMBER = o.value_text where o.concept_id = @TELEPHONE_NUMBER;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RETURN_VISIT_DATE = o.value_datetime where o.concept_id = @RETURN_VISIT_DATE;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reasons_for_Referral = concept_name(o.value_coded, 'en') where o.concept_id = @Reasons_for_Referral;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FIRST_NAME_OF_MOTHER = o.value_text where o.concept_id = @FIRST_NAME_OF_MOTHER;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LAST_NAME_OF_MOTHER = o.value_text where o.concept_id = @LAST_NAME_OF_MOTHER;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TELEPHONE_NUMBER_OF_CONTACT = o.value_text where o.concept_id = @TELEPHONE_NUMBER_OF_CONTACT;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Gestational_age_at_birth_in_weeks = o.value_numeric where o.concept_id = @Gestational_age_at_birth_in_weeks;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Parent_Seropositive_Status = concept_name(o.value_coded, 'en') where o.concept_id = @Parent_Seropositive_Status;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PERINATAL_INFECTION = concept_name(o.value_coded, 'en') where o.concept_id = @PERINATAL_INFECTION;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL = concept_name(o.value_coded, 'en') where o.concept_id = @TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WEIGHT__KG_ = o.value_numeric where o.concept_id = @WEIGHT__KG_;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESPIRATORY_RATE = o.value_numeric where o.concept_id = @RESPIRATORY_RATE;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEIGHT__CM_ = o.value_numeric where o.concept_id = @HEIGHT__CM_;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ABNORMAL_TEMPERATURE_FOR_AGE_RANGE = concept_name(o.value_coded, 'en') where o.concept_id = @ABNORMAL_TEMPERATURE_FOR_AGE_RANGE;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TEMPERATURE__C_ = o.value_numeric where o.concept_id = @TEMPERATURE__C_;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEAD_CIRCUMFERENCE = o.value_numeric where o.concept_id = @HEAD_CIRCUMFERENCE;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.INTERVAL_GROWTH = o.value_numeric where o.concept_id = @INTERVAL_GROWTH;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NEED_FOLLOW_UP = concept_name(o.value_coded, 'en') where o.concept_id = @NEED_FOLLOW_UP;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DEMOGRAPHIC_CHANGES = concept_name(o.value_coded, 'en') where o.concept_id = @DEMOGRAPHIC_CHANGES;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CORRECTED_AGE = o.value_numeric where o.concept_id = @CORRECTED_AGE;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CONVULSIONS_DANGER_SIGNS_PRESENT = concept_name(o.value_coded, 'en') where o.concept_id = @CONVULSIONS_DANGER_SIGNS_PRESENT;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.STIFF_NECK_OR_BULGING_FONTANELLES_DANGER_SIGNS_PRESENT = concept_name(o.value_coded, 'en') where o.concept_id = @STIFF_NECK_OR_BULGING_FONTANELLES_DANGER_SIGNS_PRESENT;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LETHARGY_OR_UNRESPONSIVENESS_DANGER_SIGNS_PRESENT = concept_name(o.value_coded, 'en') where o.concept_id = @LETHARGY_OR_UNRESPONSIVENESS_DANGER_SIGNS_PRESENT;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.UMBILICAL_CORD_REDNESS_DANGER_SIGNS = concept_name(o.value_coded, 'en') where o.concept_id = @UMBILICAL_CORD_REDNESS_DANGER_SIGNS;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BREATHING_DANGER_SIGNS_PRESENT = concept_name(o.value_coded, 'en') where o.concept_id = @BREATHING_DANGER_SIGNS_PRESENT;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SOCIO_ECONOMIC_ASSISTANCE = concept_name(o.value_coded, 'en') where o.concept_id = @SOCIO_ECONOMIC_ASSISTANCE;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SOCIO_ECONOMIC_ASSISTANCE_RECOMMENDED = concept_name(o.value_coded, 'en') where o.concept_id = @SOCIO_ECONOMIC_ASSISTANCE_RECOMMENDED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RECEIVED_AT_LEAST_ONE_ECD_EDUCATION_SESSION = concept_name(o.value_coded, 'en') where o.concept_id = @RECEIVED_AT_LEAST_ONE_ECD_EDUCATION_SESSION;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LARGE_MUSCLE_MOVEMENTS = concept_name(o.value_coded, 'en') where o.concept_id = @LARGE_MUSCLE_MOVEMENTS;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.COMMUNICATION = concept_name(o.value_coded, 'en') where o.concept_id = @COMMUNICATION;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PERSONAL_SOCIAL_coded = concept_name(o.value_coded, 'en') where o.concept_id = @PERSONAL_SOCIAL_coded;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SOCIO_ECONOMIC_ASSISTANCE_ALREADY_RECEIVED = concept_name(o.value_coded, 'en') where o.concept_id = @SOCIO_ECONOMIC_ASSISTANCE_ALREADY_RECEIVED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SOCIO_ECONOMIC_ASSISTANCE_NON_CODED = o.value_text where o.concept_id = @SOCIO_ECONOMIC_ASSISTANCE_NON_CODED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RELATIONSHIP_OF_RELATIVE_TO_PATIENT__NON_CODED = o.value_text where o.concept_id = @RELATIONSHIP_OF_RELATIVE_TO_PATIENT__NON_CODED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SMALL_MUSCLE_MOVEMENTS = concept_name(o.value_coded, 'en') where o.concept_id = @SMALL_MUSCLE_MOVEMENTS;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PROBLEM_SOLVING = concept_name(o.value_coded, 'en') where o.concept_id = @PROBLEM_SOLVING;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.AGE_USED = concept_name(o.value_coded, 'en') where o.concept_id = @AGE_USED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.INTERVAL_GROWTH_CODED = concept_name(o.value_coded, 'en') where o.concept_id = @INTERVAL_GROWTH_CODED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEAD_CIRCUMFERENCE_CODED = concept_name(o.value_coded, 'en') where o.concept_id = @HEAD_CIRCUMFERENCE_CODED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PDC_DANGER_SIGNS_ACTION_TAKEN = concept_name(o.value_coded, 'en') where o.concept_id = @PDC_DANGER_SIGNS_ACTION_TAKEN;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Weight_for_age_z_score = o.value_numeric where o.concept_id = @Weight_for_age_z_score;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Height_for_age_z_score = o.value_numeric where o.concept_id = @Height_for_age_z_score;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.REASON_FOR_DISCHARGE = concept_name(o.value_coded, 'en') where o.concept_id = @REASON_FOR_DISCHARGE;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Weight_for_height_percentile = o.value_numeric where o.concept_id = @Weight_for_height_percentile;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HC_FOR_AGE_Z_SCORE = o.value_numeric where o.concept_id = @HC_FOR_AGE_Z_SCORE;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Age_of_primary_care_taker = o.value_numeric where o.concept_id = @Age_of_primary_care_taker;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TRANSFER_OUT_TO = o.value_text where o.concept_id = @TRANSFER_OUT_TO;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.REASON_FOR_NOT_DOING_FOLLOW_UP = concept_name(o.value_coded, 'en') where o.concept_id = @REASON_FOR_NOT_DOING_FOLLOW_UP;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reasons_for_Referral__non_coded = o.value_text where o.concept_id = @Reasons_for_Referral__non_coded;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PDC_WtAge_Z_score = concept_name(o.value_coded, 'en') where o.concept_id = @PDC_WtAge_Z_score;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PDC_WtHt_Z_score = concept_name(o.value_coded, 'en') where o.concept_id = @PDC_WtHt_Z_score;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PDC_HeightAge_Z_score = concept_name(o.value_coded, 'en') where o.concept_id = @PDC_HeightAge_Z_score;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PDC_HCAge_Z_score = concept_name(o.value_coded, 'en') where o.concept_id = @PDC_HCAge_Z_score;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Play_activities_recommended = o.value_text where o.concept_id = @Play_activities_recommended;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Social_Worker = o.value_text where o.concept_id = @Social_Worker;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Solutions_Provided = o.value_text where o.concept_id = @Solutions_Provided;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Communication_Activities_recommended = o.value_text where o.concept_id = @Communication_Activities_recommended;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Concerns_Shared = o.value_text where o.concept_id = @Concerns_Shared;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ECD_Session_Type = concept_name(o.value_coded, 'en') where o.concept_id = @ECD_Session_Type;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Delay = o.value_text where o.concept_id = @Delay;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Family_Support = o.value_text where o.concept_id = @Family_Support;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Maternal_Literacy = o.value_text where o.concept_id = @Maternal_Literacy;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Temperament_strengths = o.value_text where o.concept_id = @Temperament_strengths;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Financial_Strength = o.value_text where o.concept_id = @Financial_Strength;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DATE_OF_STARTING_FOLLOW_UP = o.value_datetime where o.concept_id = @DATE_OF_STARTING_FOLLOW_UP;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.caregiver_play_or_teach_child_directly_in_the_past_3_days = concept_name(o.value_coded, 'en') where o.concept_id = @caregiver_play_or_teach_child_directly_in_the_past_3_days;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Caregiver_participate_in_morning_group_session = concept_name(o.value_coded, 'en') where o.concept_id = @Caregiver_participate_in_morning_group_session;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Does_Vomiting_everything = concept_name(o.value_coded, 'en') where o.concept_id = @Does_Vomiting_everything;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Palmo_plantar_pallor_Danger_signs_present = concept_name(o.value_coded, 'en') where o.concept_id = @Palmo_plantar_pallor_Danger_signs_present;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Child_Feeding_On = concept_name(o.value_coded, 'en') where o.concept_id = @Child_Feeding_On;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.History_of_fever = concept_name(o.value_coded, 'en') where o.concept_id = @History_of_fever;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diarrhea_Danger_signs = concept_name(o.value_coded, 'en') where o.concept_id = @Diarrhea_Danger_signs;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Bilateral_pitting_oedema_danger_signs_present = concept_name(o.value_coded, 'en') where o.concept_id = @Bilateral_pitting_oedema_danger_signs_present;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Dehydration_Danger_signs_Present = concept_name(o.value_coded, 'en') where o.concept_id = @Dehydration_Danger_signs_Present;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Require_malnutritiongrowth_failure_treatment = concept_name(o.value_coded, 'en') where o.concept_id = @Require_malnutritiongrowth_failure_treatment;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Feeding_difficulty = concept_name(o.value_coded, 'en') where o.concept_id = @Feeding_difficulty;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PDC_Malnutrition_status = concept_name(o.value_coded, 'en') where o.concept_id = @PDC_Malnutrition_status;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PDC_Infant_Formula = concept_name(o.value_coded, 'en') where o.concept_id = @PDC_Infant_Formula;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_counselled_on = o.value_text where o.concept_id = @Other_counselled_on;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.counseling_on = concept_name(o.value_coded, 'en') where o.concept_id = @counseling_on;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Current_Visit_Classification = concept_name(o.value_coded, 'en') where o.concept_id = @Current_Visit_Classification;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Completed_by = concept_name(o.value_coded, 'en') where o.concept_id = @Completed_by;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Feeding_Intervention = concept_name(o.value_coded, 'en') where o.concept_id = @Feeding_Intervention;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.when_to_start_treatment_coded_ = concept_name(o.value_coded, 'en') where o.concept_id = @when_to_start_treatment_coded_;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Foodsliquids_only_child_feeding_on = o.value_text where o.concept_id = @Foodsliquids_only_child_feeding_on;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Way_of_breastfeeding = concept_name(o.value_coded, 'en') where o.concept_id = @Way_of_breastfeeding;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Growth_Curve = concept_name(o.value_coded, 'en') where o.concept_id = @Growth_Curve;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Previous_visit_Classification = concept_name(o.value_coded, 'en') where o.concept_id = @Previous_visit_Classification;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Maternal_Food_Package = concept_name(o.value_coded, 'en') where o.concept_id = @Maternal_Food_Package;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_liquidsfoods_with_breastmilk_child_feeding_on = o.value_text where o.concept_id = @Other_liquidsfoods_with_breastmilk_child_feeding_on;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.specify_on_feeding_difficulty = o.value_text where o.concept_id = @specify_on_feeding_difficulty;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Maternal_Concerns = concept_name(o.value_coded, 'en') where o.concept_id = @Maternal_Concerns;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Material_MUAC__MM_ = concept_name(o.value_coded, 'en') where o.concept_id = @Material_MUAC__MM_;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Personal_Social = o.value_numeric where o.concept_id = @Personal_Social;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Communication_score = o.value_numeric where o.concept_id = @Communication_score;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Problem_solving_score = o.value_numeric where o.concept_id = @Problem_solving_score;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Small_Muscle_Movements_Score = o.value_numeric where o.concept_id = @Small_Muscle_Movements_Score;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Large_Muscle_Movement_Score = o.value_numeric where o.concept_id = @Large_Muscle_Movement_Score;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Maternal_Concerns = o.value_text where o.concept_id = @Other_Maternal_Concerns;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Assessment_Needed_By = concept_name(o.value_coded, 'en') where o.concept_id = @Assessment_Needed_By;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Feeding_Intervetion = o.value_text where o.concept_id = @Other_Feeding_Intervetion;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Maternal_Food_Package_End_Time = o.value_datetime where o.concept_id = @Maternal_Food_Package_End_Time;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.years_of_schooling_completed_by_caregiver = o.value_numeric where o.concept_id = @years_of_schooling_completed_by_caregiver;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Number_of_dependents_under_eighteen = o.value_numeric where o.concept_id = @Number_of_dependents_under_eighteen;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_has_had_feeding_difficulty = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_has_had_feeding_difficulty;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_had_recorded_feeding_difficulty_on_encounter_with_date = o.value_datetime where o.concept_id = @Patient_had_recorded_feeding_difficulty_on_encounter_with_date;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.MINERALS_IRON_SUPPLEMENTS = concept_name(o.value_coded, 'en') where o.concept_id = @MINERALS_IRON_SUPPLEMENTS;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BREASTFEEDING = concept_name(o.value_coded, 'en') where o.concept_id = @BREASTFEEDING;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Oxygen_Duration = concept_name(o.value_coded, 'en') where o.concept_id = @Oxygen_Duration;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Breastmilk = concept_name(o.value_coded, 'en') where o.concept_id = @Breastmilk;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Admission_Date = o.value_datetime where o.concept_id = @Admission_Date;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Food_Support_Received = concept_name(o.value_coded, 'en') where o.concept_id = @Food_Support_Received;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Discharge_Date = o.value_datetime where o.concept_id = @Discharge_Date;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Antibiotics_duration = concept_name(o.value_coded, 'en') where o.concept_id = @Antibiotics_duration;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Anticonvulsants_Received_on_Discharge = concept_name(o.value_coded, 'en') where o.concept_id = @Anticonvulsants_Received_on_Discharge;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.INFANT_FORMULA = concept_name(o.value_coded, 'en') where o.concept_id = @INFANT_FORMULA;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_INSURANCE_TYPE__NON_CODED = o.value_text where o.concept_id = @OTHER_INSURANCE_TYPE__NON_CODED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ARE_YOU_ENROLLED_IN_A_MUTUELLE = concept_name(o.value_coded, 'en') where o.concept_id = @ARE_YOU_ENROLLED_IN_A_MUTUELLE;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.RESULT_OF_HIV_TEST = concept_name(o.value_coded, 'en') where o.concept_id = @RESULT_OF_HIV_TEST;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BIRTH_LOCATION_TYPE = concept_name(o.value_coded, 'en') where o.concept_id = @BIRTH_LOCATION_TYPE;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Apgar_5_minute = o.value_numeric where o.concept_id = @Apgar_5_minute;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Apgar_1_minute = o.value_numeric where o.concept_id = @Apgar_1_minute;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Apgar_10_minutes = o.value_numeric where o.concept_id = @Apgar_10_minutes;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NEVIRAPINE = concept_name(o.value_coded, 'en') where o.concept_id = @NEVIRAPINE;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Anticonvulsants_Received_Inpatient = concept_name(o.value_coded, 'en') where o.concept_id = @Anticonvulsants_Received_Inpatient;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Number_of_Cans_Provided = o.value_text where o.concept_id = @Number_of_Cans_Provided;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Currently_on_medication = concept_name(o.value_coded, 'en') where o.concept_id = @Currently_on_medication;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Type_of_medication_currently_on = o.value_text where o.concept_id = @Type_of_medication_currently_on;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.INFANT_FEEDING_METHOD = concept_name(o.value_coded, 'en') where o.concept_id = @INFANT_FEEDING_METHOD;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Dose = o.value_text where o.concept_id = @Dose;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Convulstions_Duration = concept_name(o.value_coded, 'en') where o.concept_id = @Convulstions_Duration;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.On_ARVs = concept_name(o.value_coded, 'en') where o.concept_id = @On_ARVs;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.NAME_OF_REFERRING_SITE = o.value_text where o.concept_id = @NAME_OF_REFERRING_SITE;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Cup_Feeding = concept_name(o.value_coded, 'en') where o.concept_id = @Cup_Feeding;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Anticonvulsant_dose__mgday_ = o.value_numeric where o.concept_id = @Anticonvulsant_dose__mgday_;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Discharge_Comments = o.value_text where o.concept_id = @Discharge_Comments;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Antibiotic_therapy = concept_name(o.value_coded, 'en') where o.concept_id = @Antibiotic_therapy;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.patient_reffered_for_vision = concept_name(o.value_coded, 'en') where o.concept_id = @patient_reffered_for_vision;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Feeding_Method = o.value_text where o.concept_id = @Other_Feeding_Method;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_medication = o.value_text where o.concept_id = @Other_medication;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.patient_reffered_for_Hearing = concept_name(o.value_coded, 'en') where o.concept_id = @patient_reffered_for_Hearing;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.METHOD_OF_DELIVERY = concept_name(o.value_coded, 'en') where o.concept_id = @METHOD_OF_DELIVERY;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.REASON_FOR_VISIT = concept_name(o.value_coded, 'en') where o.concept_id = @REASON_FOR_VISIT;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.unable_to_feed = concept_name(o.value_coded, 'en') where o.concept_id = @unable_to_feed;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Coughing_or_tearing_while_feeding = concept_name(o.value_coded, 'en') where o.concept_id = @Coughing_or_tearing_while_feeding;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Rigid_muscles_or_jaw_clenching_that_prevents_feeding = concept_name(o.value_coded, 'en') where o.concept_id = @Rigid_muscles_or_jaw_clenching_that_prevents_feeding;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.TIME_UNITS = concept_name(o.value_coded, 'en') where o.concept_id = @TIME_UNITS;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Chronological_Age = o.value_numeric where o.concept_id = @Chronological_Age;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Hydrocephalus = concept_name(o.value_coded, 'en') where o.concept_id = @Hydrocephalus;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.tires_quickly_when_feeding = concept_name(o.value_coded, 'en') where o.concept_id = @tires_quickly_when_feeding;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Excessive_sweating_when_feeding = concept_name(o.value_coded, 'en') where o.concept_id = @Excessive_sweating_when_feeding;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Food_frequency__quantity_concerns = concept_name(o.value_coded, 'en') where o.concept_id = @Food_frequency__quantity_concerns;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Responsive_Feeding = concept_name(o.value_coded, 'en') where o.concept_id = @Responsive_Feeding;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Feeding_Difficulties = concept_name(o.value_coded, 'en') where o.concept_id = @Feeding_Difficulties;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Food_texture_concerns = concept_name(o.value_coded, 'en') where o.concept_id = @Food_texture_concerns;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Food_Variety_Concerns = concept_name(o.value_coded, 'en') where o.concept_id = @Food_Variety_Concerns;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Breastfeeding_status = concept_name(o.value_coded, 'en') where o.concept_id = @Breastfeeding_status;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Non_nutritious_foods = concept_name(o.value_coded, 'en') where o.concept_id = @Non_nutritious_foods;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Kangaroo_Mother_Care_Comments = o.value_text where o.concept_id = @Kangaroo_Mother_Care_Comments;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Non_Breastfeeding_Concerns = concept_name(o.value_coded, 'en') where o.concept_id = @Non_Breastfeeding_Concerns;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Child_unable_to_fix_and_follow_object_with_eyes = concept_name(o.value_coded, 'en') where o.concept_id = @Child_unable_to_fix_and_follow_object_with_eyes;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PROBLEM_LIST = concept_name(o.value_coded, 'en') where o.concept_id = @PROBLEM_LIST;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Breastfed_and_non_breastfed_concerns = concept_name(o.value_coded, 'en') where o.concept_id = @Breastfed_and_non_breastfed_concerns;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Lazy_eye_or_gaze_angled_or_wandering_or_squinting = concept_name(o.value_coded, 'en') where o.concept_id = @Lazy_eye_or_gaze_angled_or_wandering_or_squinting;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Kangaroo_Mother_Care_done_at_home = concept_name(o.value_coded, 'en') where o.concept_id = @Kangaroo_Mother_Care_done_at_home;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Iron_Supplement = concept_name(o.value_coded, 'en') where o.concept_id = @Iron_Supplement;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Eye_concerns_by_caregiver = concept_name(o.value_coded, 'en') where o.concept_id = @Eye_concerns_by_caregiver;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Paper_Rub_Test = concept_name(o.value_coded, 'en') where o.concept_id = @Paper_Rub_Test;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Counselled_on_Kangaroo_Mother_Care = concept_name(o.value_coded, 'en') where o.concept_id = @Counselled_on_Kangaroo_Mother_Care;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Undescended_Testicle = concept_name(o.value_coded, 'en') where o.concept_id = @Undescended_Testicle;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Difficulty_Breathing = concept_name(o.value_coded, 'en') where o.concept_id = @Difficulty_Breathing;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Any_hearing_concerns = concept_name(o.value_coded, 'en') where o.concept_id = @Any_hearing_concerns;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.History_of_Convulsions = concept_name(o.value_coded, 'en') where o.concept_id = @History_of_Convulsions;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.GMCD_Administered = concept_name(o.value_coded, 'en') where o.concept_id = @GMCD_Administered;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PDC_Visit_Period = concept_name(o.value_coded, 'en') where o.concept_id = @PDC_Visit_Period;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Child_unable_to_respond_to_noise = concept_name(o.value_coded, 'en') where o.concept_id = @Child_unable_to_respond_to_noise;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_FAMILY_PLANNING_METHOD__NON_CODED = o.value_text where o.concept_id = @OTHER_FAMILY_PLANNING_METHOD__NON_CODED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Iron_Dose = o.value_text where o.concept_id = @Iron_Dose;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Breastfeeding_Concerns = concept_name(o.value_coded, 'en') where o.concept_id = @Breastfeeding_Concerns;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Iron_supplement_level = concept_name(o.value_coded, 'en') where o.concept_id = @Iron_supplement_level;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.FAMILY_PLANNING = concept_name(o.value_coded, 'en') where o.concept_id = @FAMILY_PLANNING;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Clinican_notes = o.value_text where o.concept_id = @Clinican_notes;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Status_of_History_of_Convulsions = concept_name(o.value_coded, 'en') where o.concept_id = @Status_of_History_of_Convulsions;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Action_taken_based_on_GMCD = concept_name(o.value_coded, 'en') where o.concept_id = @Action_taken_based_on_GMCD;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Refer_from_PDC = concept_name(o.value_coded, 'en') where o.concept_id = @Refer_from_PDC;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PDC_Guide_to_Monitoring_Child_Development__GMCD__concerns = concept_name(o.value_coded, 'en') where o.concept_id = @PDC_Guide_to_Monitoring_Child_Development__GMCD__concerns;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.GMCD_Classification = concept_name(o.value_coded, 'en') where o.concept_id = @GMCD_Classification;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Problem_Non_Coded = o.value_text where o.concept_id = @Other_Problem_Non_Coded;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Clinical_response_to_convulsions = concept_name(o.value_coded, 'en') where o.concept_id = @Clinical_response_to_convulsions;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Convulsions_on_anticonvulsants = concept_name(o.value_coded, 'en') where o.concept_id = @Convulsions_on_anticonvulsants;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Does_child_need_to_hold_objects_close_to_face_to_see = concept_name(o.value_coded, 'en') where o.concept_id = @Does_child_need_to_hold_objects_close_to_face_to_see;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Referred_to_Neurosurgery = concept_name(o.value_coded, 'en') where o.concept_id = @Referred_to_Neurosurgery;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.feeding_Assessment = concept_name(o.value_coded, 'en') where o.concept_id = @feeding_Assessment;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Anticonvulsants_status = concept_name(o.value_coded, 'en') where o.concept_id = @Anticonvulsants_status;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Action_based_on_no_family_planning = concept_name(o.value_coded, 'en') where o.concept_id = @Action_based_on_no_family_planning;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Adjust_dose_for_current_convulsions = concept_name(o.value_coded, 'en') where o.concept_id = @Adjust_dose_for_current_convulsions;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Changes_needed_to_anticonvulsants = concept_name(o.value_coded, 'en') where o.concept_id = @Changes_needed_to_anticonvulsants;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Prolonged_Rupture_Membrane = concept_name(o.value_coded, 'en') where o.concept_id = @Prolonged_Rupture_Membrane;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CPAP = concept_name(o.value_coded, 'en') where o.concept_id = @CPAP;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Discharge_Weight = o.value_numeric where o.concept_id = @Discharge_Weight;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Supplemental_Oxygen = concept_name(o.value_coded, 'en') where o.concept_id = @Supplemental_Oxygen;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Maternal_Fever = concept_name(o.value_coded, 'en') where o.concept_id = @Maternal_Fever;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Enhanced_calorie_feeding = concept_name(o.value_coded, 'en') where o.concept_id = @Enhanced_calorie_feeding;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Adjust_dose_based_on_weight = concept_name(o.value_coded, 'en') where o.concept_id = @Adjust_dose_based_on_weight;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e._Presence_Of_Meconium = concept_name(o.value_coded, 'en') where o.concept_id = @_Presence_Of_Meconium;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Drugs_discontinued = concept_name(o.value_coded, 'en') where o.concept_id = @Drugs_discontinued;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.BIRTH_LOCATION_TYPE__NON_CODED = o.value_text where o.concept_id = @BIRTH_LOCATION_TYPE__NON_CODED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ear_pain_or_ear_discharge = concept_name(o.value_coded, 'en') where o.concept_id = @ear_pain_or_ear_discharge;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.persistent_diarrhea = concept_name(o.value_coded, 'en') where o.concept_id = @persistent_diarrhea;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.neck_pain__weakness_or_tingling_in_armslegs = concept_name(o.value_coded, 'en') where o.concept_id = @neck_pain__weakness_or_tingling_in_armslegs;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.sign_of_obstructive_sleep_apnea = concept_name(o.value_coded, 'en') where o.concept_id = @sign_of_obstructive_sleep_apnea;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.pass_stool = concept_name(o.value_coded, 'en') where o.concept_id = @pass_stool;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Severe_feeding_problem = o.value_text where o.concept_id = @Severe_feeding_problem;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.WEIGHT_GAIN = o.value_numeric where o.concept_id = @WEIGHT_GAIN;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Surgery_Location__non_coded_ = o.value_text where o.concept_id = @Surgery_Location__non_coded_;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Anticonvulsant_Dose = o.value_text where o.concept_id = @Anticonvulsant_Dose;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Anticonvulsant = o.value_text where o.concept_id = @Anticonvulsant;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_feeding_difficulties = o.value_text where o.concept_id = @Other_feeding_difficulties;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ICP_signs = concept_name(o.value_coded, 'en') where o.concept_id = @ICP_signs;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HC_continuing_to_cross_z_score_lines = concept_name(o.value_coded, 'en') where o.concept_id = @HC_continuing_to_cross_z_score_lines;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_PDC_Referral = o.value_text where o.concept_id = @Other_PDC_Referral;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Date_ECHOCARDIOGRAM_Taken = o.value_datetime where o.concept_id = @Date_ECHOCARDIOGRAM_Taken;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DDB_ECHOCARDIOGRAPH_RESULT = concept_name(o.value_coded, 'en') where o.concept_id = @DDB_ECHOCARDIOGRAPH_RESULT;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PATIENT_REFERRED_TO_DISTRICT_HOSPITAL = concept_name(o.value_coded, 'en') where o.concept_id = @PATIENT_REFERRED_TO_DISTRICT_HOSPITAL;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Cleft_breastfeeding_counselling_provided = concept_name(o.value_coded, 'en') where o.concept_id = @Cleft_breastfeeding_counselling_provided;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Type_of_Defect = concept_name(o.value_coded, 'en') where o.concept_id = @Type_of_Defect;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Thyroid_test = concept_name(o.value_coded, 'en') where o.concept_id = @Thyroid_test;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CONFIRMED_DIAGNOSIS = concept_name(o.value_coded, 'en') where o.concept_id = @CONFIRMED_DIAGNOSIS;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.delayed_passage_of_meconiumstool = concept_name(o.value_coded, 'en') where o.concept_id = @delayed_passage_of_meconiumstool;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.VACCINATIONS_RECEIVED = concept_name(o.value_coded, 'en') where o.concept_id = @VACCINATIONS_RECEIVED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.POLIO_VACCINATION__INACTIVATED = concept_name(o.value_coded, 'en') where o.concept_id = @POLIO_VACCINATION__INACTIVATED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reason_for_Referral_from_PDC = concept_name(o.value_coded, 'en') where o.concept_id = @Reason_for_Referral_from_PDC;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.VP_Shunt = concept_name(o.value_coded, 'en') where o.concept_id = @VP_Shunt;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Signs_of_shunt_malfunction = concept_name(o.value_coded, 'en') where o.concept_id = @Signs_of_shunt_malfunction;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.OTHER_TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL__NON_CODED = o.value_text where o.concept_id = @OTHER_TYPE_OF_REFERRING_CLINIC_OR_HOSPITAL__NON_CODED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.COMPLETE_BLOOD_COUNT_Test_Done = concept_name(o.value_coded, 'en') where o.concept_id = @COMPLETE_BLOOD_COUNT_Test_Done;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Anticipated_surgery_age = concept_name(o.value_coded, 'en') where o.concept_id = @Anticipated_surgery_age;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.SURGERY_STATUS = concept_name(o.value_coded, 'en') where o.concept_id = @SURGERY_STATUS;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diagnosis_confirmation_date = o.value_datetime where o.concept_id = @Diagnosis_confirmation_date;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Diagnosis_confirmation_results = o.value_text where o.concept_id = @Diagnosis_confirmation_results;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CEREBRAL_PALSY = concept_name(o.value_coded, 'en') where o.concept_id = @CEREBRAL_PALSY;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Perinatal_Asphyxia = concept_name(o.value_coded, 'en') where o.concept_id = @Perinatal_Asphyxia;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Genetic_Syndrome_Diagnosis_confirmed = concept_name(o.value_coded, 'en') where o.concept_id = @Genetic_Syndrome_Diagnosis_confirmed;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.developmental_regression = concept_name(o.value_coded, 'en') where o.concept_id = @developmental_regression;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.localized_bone_pain = concept_name(o.value_coded, 'en') where o.concept_id = @localized_bone_pain;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Maternal_history_of_syphilis = concept_name(o.value_coded, 'en') where o.concept_id = @Maternal_history_of_syphilis;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.experienced_repeated_miscarriages = concept_name(o.value_coded, 'en') where o.concept_id = @experienced_repeated_miscarriages;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ANEMIA = concept_name(o.value_coded, 'en') where o.concept_id = @ANEMIA;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HIV_exposed = concept_name(o.value_coded, 'en') where o.concept_id = @HIV_exposed;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Hypothyroidism = concept_name(o.value_coded, 'en') where o.concept_id = @Hypothyroidism;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.increase_or_decrease_in_tone_or_delays_in_motor_development = concept_name(o.value_coded, 'en') where o.concept_id = @increase_or_decrease_in_tone_or_delays_in_motor_development;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.referred_to_EIP_group = concept_name(o.value_coded, 'en') where o.concept_id = @referred_to_EIP_group;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Is_child_and_family_part_of_EIP_group = concept_name(o.value_coded, 'en') where o.concept_id = @Is_child_and_family_part_of_EIP_group;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Signs_of_shunt_infection = concept_name(o.value_coded, 'en') where o.concept_id = @Signs_of_shunt_infection;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Complete_blood_count_results_no_coded = o.value_text where o.concept_id = @Complete_blood_count_results_no_coded;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HIV_STATUS = concept_name(o.value_coded, 'en') where o.concept_id = @HIV_STATUS;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Assessment_of_other_abnormalities = concept_name(o.value_coded, 'en') where o.concept_id = @Assessment_of_other_abnormalities;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DATE_OF_SURGERY = o.value_datetime where o.concept_id = @DATE_OF_SURGERY;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Date_surgery_completed = o.value_datetime where o.concept_id = @Date_surgery_completed;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.HEMOGLOBIN = o.value_numeric where o.concept_id = @HEMOGLOBIN;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.PDC_Program_End_Reasons = concept_name(o.value_coded, 'en') where o.concept_id = @PDC_Program_End_Reasons;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Concern_for_poor_breastfeeding = concept_name(o.value_coded, 'en') where o.concept_id = @Concern_for_poor_breastfeeding;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Child_supervised_at_all_times_to_avoid_injuries = concept_name(o.value_coded, 'en') where o.concept_id = @Child_supervised_at_all_times_to_avoid_injuries;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ADHERENCE_TO_TAKING_MEDICATION = concept_name(o.value_coded, 'en') where o.concept_id = @ADHERENCE_TO_TAKING_MEDICATION;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.appear_clean_and_cared_for = concept_name(o.value_coded, 'en') where o.concept_id = @appear_clean_and_cared_for;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Symptoms_of_or_concern_for_poor_interval_growth = concept_name(o.value_coded, 'en') where o.concept_id = @Symptoms_of_or_concern_for_poor_interval_growth;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.In_social_support_program = concept_name(o.value_coded, 'en') where o.concept_id = @In_social_support_program;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_receiving_correct_treatment = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_receiving_correct_treatment;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.spousefamily_supported_in_caring_for_the_child = concept_name(o.value_coded, 'en') where o.concept_id = @spousefamily_supported_in_caring_for_the_child;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Use_of_non_physical_or_abusive_discipline_methods = concept_name(o.value_coded, 'en') where o.concept_id = @Use_of_non_physical_or_abusive_discipline_methods;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Parent_being_stigmatized_by_the_family_or_neighbors = concept_name(o.value_coded, 'en') where o.concept_id = @Parent_being_stigmatized_by_the_family_or_neighbors;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Home_environment_safe_from_potential_hazards_to_the_child = concept_name(o.value_coded, 'en') where o.concept_id = @Home_environment_safe_from_potential_hazards_to_the_child;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Use_safe_household_items_as_toys_or_homemade_toys = concept_name(o.value_coded, 'en') where o.concept_id = @Use_safe_household_items_as_toys_or_homemade_toys;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Concern_about_use_of_traditional_medicine = concept_name(o.value_coded, 'en') where o.concept_id = @Concern_about_use_of_traditional_medicine;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.In_nutrition_program_at_health_center = concept_name(o.value_coded, 'en') where o.concept_id = @In_nutrition_program_at_health_center;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.summative_comments_and_recommendations = o.value_text where o.concept_id = @summative_comments_and_recommendations;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Malnourished = concept_name(o.value_coded, 'en') where o.concept_id = @Malnourished;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Safe_food_preparation_and_storage = concept_name(o.value_coded, 'en') where o.concept_id = @Safe_food_preparation_and_storage;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Food_supply = concept_name(o.value_coded, 'en') where o.concept_id = @Food_supply;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Patient_kept_warm_adequately = concept_name(o.value_coded, 'en') where o.concept_id = @Patient_kept_warm_adequately;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Soap_and_water_available_after_use_of_toilet = concept_name(o.value_coded, 'en') where o.concept_id = @Soap_and_water_available_after_use_of_toilet;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Abnormal_signs_symptoms = concept_name(o.value_coded, 'en') where o.concept_id = @Abnormal_signs_symptoms;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.stimulating_age_appropriate_verbal_interactions_angaged = concept_name(o.value_coded, 'en') where o.concept_id = @stimulating_age_appropriate_verbal_interactions_angaged;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Concern_about_illness = concept_name(o.value_coded, 'en') where o.concept_id = @Concern_about_illness;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reason_for_home_visit = concept_name(o.value_coded, 'en') where o.concept_id = @Reason_for_home_visit;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.DIARRHEA_CURRENT = concept_name(o.value_coded, 'en') where o.concept_id = @DIARRHEA_CURRENT;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Meets_admission_criteria = concept_name(o.value_coded, 'en') where o.concept_id = @Meets_admission_criteria;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_Growth_and_nutrition_question = o.value_text where o.concept_id = @Other_Growth_and_nutrition_question;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_parental_concerns = o.value_text where o.concept_id = @Other_parental_concerns;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other = o.value_text where o.concept_id = @Other;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Reason_for_missed_visit = concept_name(o.value_coded, 'en') where o.concept_id = @Reason_for_missed_visit;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.ACCOMPAGNATEUR_PHONE_NUMBER = o.value_text where o.concept_id = @ACCOMPAGNATEUR_PHONE_NUMBER;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.demonstrated_concerning_home_environment_safety = o.value_text where o.concept_id = @demonstrated_concerning_home_environment_safety;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.demonstrated_during_developmental___social_andor_familly_issues = o.value_text where o.concept_id = @demonstrated_during_developmental___social_andor_familly_issues;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.demonstrated_concerning_Growth_and_nutrition = o.value_text where o.concept_id = @demonstrated_concerning_Growth_and_nutrition;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.demonstrated_concerning_illness__thermoregulation = o.value_text where o.concept_id = @demonstrated_concerning_illness__thermoregulation;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Social_worker_will_return_on = o.value_datetime where o.concept_id = @Social_worker_will_return_on;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_recommendations = o.value_text where o.concept_id = @Other_recommendations;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Nurse_will_return_on = o.value_datetime where o.concept_id = @Nurse_will_return_on;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Type_of_assistance_needed = o.value_text where o.concept_id = @Type_of_assistance_needed;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.demostrated_concerning_loss_to_follow_up_or_missed_visit = o.value_text where o.concept_id = @demostrated_concerning_loss_to_follow_up_or_missed_visit;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.LAST_NAME_OF_COMMUNITY_HEALTH_WORKER__REPORTED = o.value_text where o.concept_id = @LAST_NAME_OF_COMMUNITY_HEALTH_WORKER__REPORTED;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Recommendations = concept_name(o.value_coded, 'en') where o.concept_id = @Recommendations;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_concerns_about_home_environment_safery = o.value_text where o.concept_id = @Other_concerns_about_home_environment_safery;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Other_exit_reason = o.value_text where o.concept_id = @Other_exit_reason;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Requested_by_parent = concept_name(o.value_coded, 'en') where o.concept_id = @Requested_by_parent;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Parents_concern = o.value_text where o.concept_id = @Parents_concern;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.CHW_s_concern = o.value_text where o.concept_id = @CHW_s_concern;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Health_Facility_Text = o.value_text where o.concept_id = @Health_Facility_Text;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Thyroid_test_results = concept_name(o.value_coded, 'en') where o.concept_id = @Thyroid_test_results;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Date_of_Genetic_Syndrome_Diagnosis = o.value_datetime where o.concept_id = @Date_of_Genetic_Syndrome_Diagnosis;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Genetic_Syndrome_Diagnosis_results = o.value_text where o.concept_id = @Genetic_Syndrome_Diagnosis_results;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.demonstrated_concerning_parental_or_chw_request = o.value_text where o.concept_id = @demonstrated_concerning_parental_or_chw_request;
update temp_PDC_encounters e inner join temp_obs o on e.encounter_id = o.encounter_id set e.Assess_and_assist_frequency = o.value_numeric where o.concept_id = @Assess_and_assist_frequency;

select * from temp_PDC_encounters;