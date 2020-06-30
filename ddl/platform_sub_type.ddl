CREATE TABLE __INSERT_SCHEMA__.platform_sub_type (
  sub_type INT ,
  platform_type INT REFERENCES platform_type(type),
  abbreviation VARCHAR,
  description VARCHAR,
  PRIMARY KEY(sub_type)
);
