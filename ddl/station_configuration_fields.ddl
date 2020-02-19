CREATE TABLE station_configuration_fields (
  field_id VARCHAR ,
  field_name VARCHAR,
  type INT REFERENCES kind(kind),
  description VARCHAR,
  PRIMARY KEY(field_id)
);
