CREATE TABLE __INSERT_SCHEMA__.uncertainty_table (
  observation_id VARCHAR REFERENCES __INSERT_SCHEMA__.observations_table(observation_id),
  uncertainty_type INT REFERENCES __INSERT_SCHEMA__.uncertainty_type( uncertainty_type ),
  uncertainty_method INT REFERENCES __INSERT_SCHEMA__.uncertainty_method(method),
  uncertainty_value NUMERIC,
  uncertainty_units INT REFERENCES __INSERT_SCHEMA__.units(units)
);
