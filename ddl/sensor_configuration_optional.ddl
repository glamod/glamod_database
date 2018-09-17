CREATE TABLE cdm_v1.sensor_configuration_optional (
  sensor_id VARCHAR  REFERENCES cdm_v1.sensor_configuration(sensor_id),
  kind INT REFERENCES cdm_v1.kind(kind),
  field VARCHAR REFERENCES cdm_v1.sensor_configuration_fields(field_id),
  value VARCHAR,
  comments VARCHAR
);
