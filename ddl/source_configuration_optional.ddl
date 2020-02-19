CREATE TABLE source_configuration_optional (
  source_id VARCHAR  REFERENCES source_configuration(source_id),
  kind INT REFERENCES kind(kind),
  field VARCHAR REFERENCES source_configuration_fields(field_id),
  value VARCHAR,
  comments VARCHAR
);
