CREATE TABLE __INSERT_SCHEMA__.sensor_configuration (
  sensor_id VARCHAR ,
  observing_method INT REFERENCES __INSERT_SCHEMA__.observing_method(method),
  sampling_strategy INT REFERENCES __INSERT_SCHEMA__.sampling_strategy(strategy),
  calibration_status INT REFERENCES __INSERT_SCHEMA__.calibration_status(status),
  calibration_date TIMESTAMP,
  comments VARCHAR,
  date_start TIMESTAMP,
  date_end TIMESTAMP,
  optional_data INT REFERENCES __INSERT_SCHEMA__.data_present(flag),
  PRIMARY KEY(sensor_id)
);
