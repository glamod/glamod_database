CREATE TABLE __INSERT_SCHEMA__.station_configuration_optional (
  station_primary_id VARCHAR,
  record_number INT,
  kind INT REFERENCES __INSERT_SCHEMA__.kind(kind),
  field VARCHAR REFERENCES __INSERT_SCHEMA__.station_configuration_fields(field_id),
  value VARCHAR,
  comments VARCHAR,
  FOREIGN KEY( station_primary_id, record_number) REFERENCES __INSERT_SCHEMA__.station_configuration( primary_id, record_number)
);
