CREATE TABLE __INSERT_SCHEMA__.profile_configuration_optional (
  profile_id VARCHAR REFERENCES __INSERT_SCHEMA__.profile_configuration(profile_id),
  kind INT REFERENCES __INSERT_SCHEMA__.kind(kind),
  field VARCHAR REFERENCES __INSERT_SCHEMA__.profile_configuration_fields(field_id),
  value VARCHAR,
  comments VARCHAR
);
