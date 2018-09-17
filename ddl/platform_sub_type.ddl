CREATE TABLE cdm_v1.platform_sub_type (
  sub_type INT ,
  platform_type INT REFERENCES cdm_v1.platform_type(type),
  abbreviation VARCHAR,
  description VARCHAR,
  PRIMARY KEY(sub_type)
);
