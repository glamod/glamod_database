CREATE TABLE __INSERT_SCHEMA__.sensor_configuration_fields (
  field_id VARCHAR ,
  field_name VARCHAR,
  parameter VARCHAR,
  type INT REFERENCES kind(kind),
  description VARCHAR,
  PRIMARY KEY(field_id)
);
