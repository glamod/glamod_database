CREATE TABLE cdm_v1.observation_code_table (
  code_table INT ,
  code_table_scheme VARCHAR,
  code_table_id VARCHAR,
  code_table_name VARCHAR,
  value INT,
  description VARCHAR,
  PRIMARY KEY(code_table, value)
);
