CREATE TABLE cdm_v1.homogenisation_table (
  observation_id VARCHAR REFERENCES cdm_v1.observations_table(observation_id),
  homogenisation_method INT REFERENCES cdm_v1.homogenisation_method(method),
  homogenisation_adjustment NUMERIC,
  homogenisation_operator INT REFERENCES cdm_v1.homogenisation_operator(operator),
  homogenisation_order INT
);
