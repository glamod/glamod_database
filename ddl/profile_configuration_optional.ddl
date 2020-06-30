CREATE TABLE __INSERT_SCHEMA__.profile_configuration_optional (
  profile_id VARCHAR REFERENCES profile_configuration(profile_id),
  kind INT REFERENCES kind(kind),
  field VARCHAR REFERENCES profile_configuration_fields(field_id),
  value VARCHAR,
  comments VARCHAR
);
