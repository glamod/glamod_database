CREATE TABLE __INSERT_SCHEMA__.organisation (
  organisation_id VARCHAR ,
  parent_organisation VARCHAR REFERENCES __INSERT_SCHEMA__.organisation(organisation_id),
  name VARCHAR,
  abbreviation VARCHAR,
  address VARCHAR,
  city VARCHAR,
  admin_area VARCHAR,
  region INT REFERENCES __INSERT_SCHEMA__.region(region),
  country INT REFERENCES __INSERT_SCHEMA__.sub_region(sub_region),
  postal_code VARCHAR,
  telephone VARCHAR,
  url VARCHAR,
  email VARCHAR,
  PRIMARY KEY(organisation_id)
);
