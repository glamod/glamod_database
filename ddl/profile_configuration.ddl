CREATE TABLE cdm_v1.profile_configuration (
  profile_id VARCHAR ,
  profile_type INT REFERENCES cdm_v1.profile_type(type),
  standard_time INT REFERENCES cdm_v1.standard_time(time),
  actual_time TIMESTAMP,
  profile_number NUMERIC,
  comments VARCHAR,
  optional_data INT REFERENCES cdm_v1.data_present(flag),
  PRIMARY KEY(profile_id)
);
