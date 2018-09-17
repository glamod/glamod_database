CREATE TABLE cdm_v1.source_configuration_fields (
  field_id VARCHAR ,
  field_name VARCHAR,
  type INT REFERENCES cdm_v1.kind(kind),
  description VARCHAR,
  PRIMARY KEY(field_id)
);
