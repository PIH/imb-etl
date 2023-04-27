
-- Schema used to set up the omrs_* tables for flattened OpenMRS data

CREATE TABLE omrs_patient (
  patient_id varchar(32) not null,
  patient_uuid varchar(64) not null,
  identifier VARCHAR(50),
  first_name VARCHAR(50),
  middle_name VARCHAR(50),
  last_name VARCHAR(50),
  gender CHAR(1),
  birthdate DATE,
  birthdate_estimated BIT,
  phone_number VARCHAR(50),
  country VARCHAR(50),
  state_province VARCHAR(255),
  county_district VARCHAR(255),
  city_village VARCHAR(255),
  postal_code VARCHAR(50),
  address1 VARCHAR(255),
  address2 VARCHAR(255),
  address3 VARCHAR(255),
  address4 VARCHAR(255),
  address5 VARCHAR(255),
  address6 VARCHAR(255),
  latitude VARCHAR(50),
  longitude VARCHAR(50),
  dead BIT,
  death_date DATE,
  age_years_at_death INT,
  age_months_at_death INT,
  cause_of_death VARCHAR(255),
  mothers_name VARCHAR(50),
  fathers_name VARCHAR(50),
  health_center VARCHAR(255),
  date_created DATE
);

CREATE TABLE omrs_patient_identifier (
  patient_identifier_id INT not null,
  uuid CHAR(38) not null,
  patient_id INT not null,
  type VARCHAR(50) not null,
  identifier VARCHAR(50) not null,
  location VARCHAR(255),
  date_created DATE
);

CREATE TABLE omrs_relationship (
  relationship_id varchar(32) not null,
  uuid CHAR(38) not null,
  patient_id varchar(32) not null,
  patient_role VARCHAR(50) not null,
  related_person_role VARCHAR(50) not null,
  related_person VARCHAR(255),
  start_date DATE,
  end_date DATE,
  date_created DATE
);

CREATE TABLE omrs_encounter_provider (
  encounter_provider_id INT not null,
  uuid CHAR(38) not null,
  encounter_id INT not null,
  encounter_uuid CHAR(38) not null,
  provider VARCHAR(255),
  provider_role VARCHAR(255)
);

CREATE TABLE omrs_encounter (
  encounter_id varchar(32) not null,
  uuid varchar(64) not null,
  patient_id varchar(32) not null,
  encounter_type VARCHAR(255) not null,
  form VARCHAR(255),
  location VARCHAR(255),
  encounter_date date,
  encounter_time time,
  provider VARCHAR(255),
  provider_role VARCHAR(255),
  age_years_at_encounter INT,
  age_months_at_encounter INT,
  date_created DATE,
  visit_id INT,
  created_by VARCHAR(100)
);

CREATE TABLE omrs_visit (
  visit_id INT not null,
  uuid CHAR(38) not null,
  patient_id INT not null,
  visit_type VARCHAR(255) not null,
  location VARCHAR(255),
  date_started date,
  date_stopped date,
  date_created DATE
);

CREATE TABLE omrs_obs_group (
  obs_group_id varchar(32) not null,
  uuid varchar(64),
  patient_id varchar(32) not null,
  encounter_id varchar(32),
  obs_group_date date,
  obs_group_time time,
  encounter_type VARCHAR(255),
  location VARCHAR(255),
  concept VARCHAR(255) not null,
  date_created DATE
);

CREATE TABLE omrs_obs (
  obs_id varchar(32) not null,
  uuid varchar(64) not null,
  patient_id varchar(32) not null,
  encounter_id varchar(32),
  obs_date date,
  obs_time time,
  age_years_at_obs INT,
  age_months_at_obs INT,
  encounter_type VARCHAR(255),
  location VARCHAR(255),
  concept VARCHAR(255) not null,
  value_coded VARCHAR(255),
  value_date DATE DEFAULT NULL,
  value_numeric NUMERIC,
  value_text VARCHAR(MAX),
  comments VARCHAR(255),
  obs_group_id varchar(32),
  date_created DATE,
  form varchar(255)
);

CREATE TABLE omrs_program_enrollment (
  program_enrollment_id varchar(32) not null,
  uuid varchar(64) not null,
  patient_id varchar(32) not null,
  program VARCHAR(100) not null,
  enrollment_date date not null,
  age_years_at_enrollment int,
  age_months_at_enrollment int,
  location VARCHAR(255),
  completion_date date,
  age_years_at_completion int,
  age_months_at_completion int,
  outcome varchar(255)
);

CREATE TABLE omrs_program_state (
  program_state_id varchar(32) not null,
  uuid varchar(64) not null,
  program_enrollment_id varchar(32) not null,
  patient_id varchar(32) not null,
  program VARCHAR(100) not null,
  workflow VARCHAR(100) not null,
  state VARCHAR(100) not null,
  start_date date not null,
  age_years_at_start int,
  age_months_at_start int,
  end_date date,
  age_years_at_end int,
  age_months_at_end int,
  location VARCHAR(255)
);

CREATE TABLE rw_location (
  location_id INT,
  name VARCHAR(255),
  description VARCHAR(1023),
  address1 VARCHAR(255),
  address2 VARCHAR(255),
  address3 VARCHAR(255),
  address4 VARCHAR(255),
  city_village VARCHAR(255),
  state_province VARCHAR(255),
  country VARCHAR(255),
  county_district VARCHAR(255)
);

CREATE TABLE rw_onc_diagnosis (
  program_state_id varchar(32) not null,
  diagnosis_status_program_enrollment_id varchar(32),
  uuid varchar(64) ,
  program_enrollment_id varchar(32) not null,
  patient_id varchar(32) not null,
  diagnosis_status_patient_id varchar(32),
  program VARCHAR(100) not null,
  diagnosis_status_program VARCHAR(100),
  workflow VARCHAR(100) not null,
  diagnosis_status_workflow VARCHAR(100),
  state VARCHAR(100) not null,
  diagnosis_status VARCHAR(100),
  start_date date not null,
  diagnosis_status_start_date date,
  age_years_at_start int,
  age_months_at_start int,
  end_date date,
  diagnosis_status_end_date date,
  age_years_at_end int,
  age_months_at_end int,
  location VARCHAR(255),
  start_date_difference fLOAT,
  end_date_difference FLOAT
);


CREATE TABLE rw_order (
  order_id varchar(32) not null,
  order_type_id varchar(32),
  concept VARCHAR(100),
  orderer VARCHAR(100),
  instructions VARCHAR(1023),
  start_date date,
  auto_expire_date date,
  discontinued_date date,
  discontinued_by VARCHAR(255),
  discontinued_reason VARCHAR(1023),
  patient_id VARCHAR(32),
  uuid VARCHAR(255),
  discontinued_reason_non_coded VARCHAR(1023),
  urgency VARCHAR(255),
  date_created date,
  encounter_id varchar(32),
  encounter_type VARCHAR(255),
  location VARCHAR(255),
  group_id varchar(32),
  order_index INT,
  indication VARCHAR(255),
  route VARCHAR(255),
  administration_instructions VARCHAR(1023),
  dose float,
  equivalent_daily_dose float,
  units VARCHAR(255),
  frequency VARCHAR(255),
  prn INT,
  complex VARCHAR(255),
  quantity float,
  order_set VARCHAR(255),
  age_years_at_start_date float,
  age_months_at_start_date float,
  drug varchar(255)
);


CREATE TABLE rw_order_group (
  order_group_id varchar(32) not null,
  uuid VARCHAR(255),
  group_type VARCHAR(255),
  cycle_number INT,
  date_created date,
  order_set_uuid VARCHAR(255),
  order_set_name VARCHAR(255),
  order_set_description VARCHAR(1023),
  indication VARCHAR(255),
  Order_day_registered char(38)

);


CREATE TABLE rw_last_vl_include_blanks (
	patient_id varchar(32),
    concept VARCHAR(255),
    obs_id varchar(32),
    end_date DATE,
    last_obs_date DATE,
    encounter_type VARCHAR(255),
    location VARCHAR(255),
    value_coded VARCHAR(255),
    value_date DATE,
    value_numeric NUMERIC,
    value_text VARCHAR(MAX),
    obs_group_id INT
);
CREATE TABLE rw_last_obs_in_period (
	patient_id varchar(32),
    concept VARCHAR(255),
    obs_id varchar(32),
    end_date DATE,
    last_obs_date DATE,
    encounter_type VARCHAR(255),
    location VARCHAR(255),
    value_coded VARCHAR(255),
    value_date DATE,
    value_numeric NUMERIC,
    value_text VARCHAR(MAX),
    obs_group_id varchar(32)
);

CREATE TABLE pdc_z_score_input (
  R_id INT,
  patient_id VARCHAR(32),
  obs_date VARCHAR(MAX),
  oedema INT,
  lh VARCHAR(MAX),
  weight NUMERIC,
  clenhei INT,
  sex INT,
  gestatiol_age_at_birth_in_weeks VARCHAR(MAX),
  agedays INT,
  zwfl VARCHAR(MAX),
  zwei VARCHAR(MAX),
  zlen VARCHAR(MAX)
);


CREATE TABLE rw_calculated_visit (
  patient_id VARCHAR(127),
  encounter_date date,
  visit_id VARCHAR(127)
);

CREATE TABLE rw_bill (
	patient_id VARCHAR(32),
    amount decimal(20,2),
    amount_3rd_part decimal(20,2),
    amount_insurance decimal(20,2),
    amount_patient decimal(20,2),
    is_paid int,
    created_date datetime,
    creator varchar(127),
    creator_uuid varchar(127),
    patient_bill_id VARCHAR(32),
    bill_payment_id VARCHAR(32)
);

CREATE TABLE rw_insurance_policy (
	patient_id VARCHAR(32),
    owner varchar(127),
    coverage_start_date date,
    expiration_date date,
    retire_date date,
    retire_reason varchar(250),
    third_part_rate decimal(20,2),
    insurance_company varchar(127),
    owner_uuid varchar(45)
);

CREATE TABLE rw_patient_service (
	patient_id VARCHAR(32),
	UNIT_PRICE DECIMAL(20,2),
    quantity decimal(20,2),
    paid_quantity decimal(20,2),
    created_date date,
    is_paid int,
    service_name varchar(250),
    patient_bill_id varchar(32)
);


CREATE TABLE rw_payment (
	bill_payment_id VARCHAR(32),
    amount_paid decimal(20,2) NOT NULL,
	date_received datetime,
    collector varchar(127),
    collector_uuid varchar(127),
    is_cash int,
    is_deposit int,
    patient_id varchar(32),
    patient_bill_id varchar(32)
);

CREATE TABLE rw_refund (
	bill_payment_id VARCHAR(32),
    refunded_by varchar(127),
    amount_refunded decimal(20,2),
    refunded_by_person_uuid varchar(127)
);

