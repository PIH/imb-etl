CREATE TABLE omrs_hypertension_patients_demographics (
  patient_id int,
  Medical_Record_Number varchar(50),
  Patient_Names varchar(255),
  Age bigint,
  Gender varchar(50),
  country varchar(50),
  state_province varchar(255),
  district varchar(255),
  sector varchar(255),
  cell varchar(255),
  umudugudu varchar(255),
  health_facility varchar(255),
  Patient_status varchar(5),
  Enrolment_Date datetime,
  Completed_Date datetime,
  Treatment_status varchar(255),
  Evaluation_status varchar(255)
);