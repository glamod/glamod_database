CREATE TABLE cdm_v1.source_configuration_optional (
  source_id VARCHAR  REFERENCES cdm_v1.source_configuration(source_id),
  kind INT REFERENCES cdm_v1.kind(kind),
  field VARCHAR REFERENCES cdm_v1.source_configuration_fields(field_id),
  value VARCHAR,
  comments VARCHAR
);
