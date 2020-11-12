CREATE TABLE __INSERT_SCHEMA__.sensor_configuration_optional (
  sensor_id VARCHAR  REFERENCES __INSERT_SCHEMA__.sensor_configuration(sensor_id),
  kind INT REFERENCES __INSERT_SCHEMA__.kind(kind),
  field VARCHAR REFERENCES __INSERT_SCHEMA__.sensor_configuration_fields(field_id),
  value VARCHAR,
  comments VARCHAR
);
