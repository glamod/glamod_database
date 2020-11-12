CREATE TABLE __INSERT_SCHEMA__.homogenisation_table (
  observation_id VARCHAR REFERENCES __INSERT_SCHEMA__.observations_table(observation_id),
  homogenisation_method INT REFERENCES __INSERT_SCHEMA__.homogenisation_method(method),
  homogenisation_adjustment NUMERIC,
  homogenisation_operator INT REFERENCES __INSERT_SCHEMA__.homogenisation_operator(operator),
  homogenisation_order INT
);
