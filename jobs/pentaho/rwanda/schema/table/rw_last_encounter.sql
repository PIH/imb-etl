CREATE TABLE rw_last_encounter(
patient_id INT not null,
most_recent_encounter DATE,
encounter_type VARCHAR(100),
end_date DATE
)