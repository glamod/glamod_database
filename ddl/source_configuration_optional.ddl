CREATE TABLE __INSERT_SCHEMA__.source_configuration_optional (
  source_id VARCHAR  REFERENCES __INSERT_SCHEMA__.source_configuration(source_id),
  kind INT REFERENCES __INSERT_SCHEMA__.kind(kind),
  field VARCHAR REFERENCES __INSERT_SCHEMA__.source_configuration_fields(field_id),
  value VARCHAR,
  comments VARCHAR
);
