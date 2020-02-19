CREATE TABLE profile_configuration_codes (
  field_id VARCHAR  REFERENCES profile_configuration_fields(field_id),
  field_name VARCHAR,
  code_value INT ,
  abbreviation VARCHAR,
  description VARCHAR,
  start_date TIMESTAMP,
  end_date TIMESTAMP,
  PRIMARY KEY(field_id, code_value)
);
