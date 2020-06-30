CREATE TABLE __INSERT_SCHEMA__.profile_configuration (
  profile_id VARCHAR ,
  profile_type INT REFERENCES profile_type(type),
  standard_time INT REFERENCES standard_time(time),
  actual_time TIMESTAMP,
  profile_number NUMERIC,
  comments VARCHAR,
  optional_data INT REFERENCES data_present(flag),
  PRIMARY KEY(profile_id)
);
