CREATE TABLE __INSERT_SCHEMA__.sensor_configuration_codes (
  field_id VARCHAR  REFERENCES __INSERT_SCHEMA__.sensor_configuration_fields(field_id),
  field_name VARCHAR,
  parameter VARCHAR,
  code_value INT ,
  abbreviation VARCHAR,
  description VARCHAR,
  PRIMARY KEY(field_id, code_value)
);
