CREATE TABLE __INSERT_SCHEMA__.source_configuration_codes (
  field_id VARCHAR  REFERENCES source_configuration_fields(field_id),
  field_name VARCHAR,
  code_value INT ,
  abbreviation VARCHAR,
  description VARCHAR,
  PRIMARY KEY(field_id, code_value)
);
