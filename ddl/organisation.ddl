CREATE TABLE cdm_v1.organisation (
  organisation_id VARCHAR ,
  parent_organisation VARCHAR REFERENCES cdm_v1.organisation(organisation_id),
  name VARCHAR,
  abbreviation VARCHAR,
  address VARCHAR,
  city VARCHAR,
  admin_area VARCHAR,
  region INT REFERENCES cdm_v1.region(region),
  country INT REFERENCES cdm_v1.sub_region(sub_region),
  postal_code VARCHAR,
  telephone VARCHAR,
  url VARCHAR,
  email VARCHAR,
  PRIMARY KEY(organisation_id)
);
