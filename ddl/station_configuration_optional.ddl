CREATE TABLE cdm_v1.station_configuration_optional (
  station_primary_id VARCHAR,
  record_number INT,
  kind INT REFERENCES cdm_v1.kind(kind),
  field VARCHAR REFERENCES cdm_v1.station_configuration_fields(field_id),
  value VARCHAR,
  comments VARCHAR,
  FOREIGN KEY( station_primary_id, record_number) REFERENCES cdm_v1.station_configuration( primary_id, record_number)
);
