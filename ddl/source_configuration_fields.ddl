CREATE TABLE __INSERT_SCHEMA__.source_configuration_fields (
  field_id VARCHAR ,
  field_name VARCHAR,
  type INT REFERENCES __INSERT_SCHEMA__.kind(kind),
  description VARCHAR,
  PRIMARY KEY(field_id)
);
