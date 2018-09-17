CREATE TABLE cdm_v1.contact (
  contact_id VARCHAR ,
  title VARCHAR,
  name VARCHAR,
  organisation VARCHAR  REFERENCES cdm_v1.organisation(organisation_id),
  telephone VARCHAR,
  email VARCHAR,
  url VARCHAR,
  PRIMARY KEY(contact_id)
);
