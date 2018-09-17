CREATE TABLE cdm_v1.station_configuration_codes (
  field_id VARCHAR  REFERENCES cdm_v1.station_configuration_fields(field_id),
  field_name VARCHAR,
  code_value INT ,
  abbreviation VARCHAR,
  description VARCHAR,
  PRIMARY KEY(field_id, code_value)
);
