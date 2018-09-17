CREATE TABLE cdm_v1.profile_configuration_optional (
  profile_id VARCHAR REFERENCES cdm_v1.profile_configuration(profile_id),
  kind INT REFERENCES cdm_v1.kind(kind),
  field VARCHAR REFERENCES cdm_v1.profile_configuration_fields(field_id),
  value VARCHAR,
  comments VARCHAR
);
