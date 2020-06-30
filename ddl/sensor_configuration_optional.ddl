CREATE TABLE __INSERT_SCHEMA__.sensor_configuration_optional (
  sensor_id VARCHAR  REFERENCES sensor_configuration(sensor_id),
  kind INT REFERENCES kind(kind),
  field VARCHAR REFERENCES sensor_configuration_fields(field_id),
  value VARCHAR,
  comments VARCHAR
);
