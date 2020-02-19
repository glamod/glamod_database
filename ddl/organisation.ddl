CREATE TABLE organisation (
  organisation_id VARCHAR ,
  parent_organisation VARCHAR REFERENCES organisation(organisation_id),
  name VARCHAR,
  abbreviation VARCHAR,
  address VARCHAR,
  city VARCHAR,
  admin_area VARCHAR,
  region INT REFERENCES region(region),
  country INT REFERENCES sub_region(sub_region),
  postal_code VARCHAR,
  telephone VARCHAR,
  url VARCHAR,
  email VARCHAR,
  PRIMARY KEY(organisation_id)
);
