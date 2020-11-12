CREATE TABLE __INSERT_SCHEMA__.contact (
  contact_id VARCHAR ,
  title VARCHAR,
  name VARCHAR,
  organisation VARCHAR  REFERENCES __INSERT_SCHEMA__.organisation(organisation_id),
  telephone VARCHAR,
  email VARCHAR,
  url VARCHAR,
  PRIMARY KEY(contact_id)
);
