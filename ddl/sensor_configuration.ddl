CREATE TABLE cdm_v1.sensor_configuration (
  sensor_id VARCHAR ,
  observing_method INT REFERENCES cdm_v1.observing_method(method),
  sampling_strategy INT REFERENCES cdm_v1.sampling_strategy(strategy),
  calibration_status INT REFERENCES cdm_v1.calibration_status(status),
  calibration_date TIMESTAMP,
  comments VARCHAR,
  date_start TIMESTAMP,
  date_end TIMESTAMP,
  optional_data INT REFERENCES cdm_v1.data_present(flag),
  PRIMARY KEY(sensor_id)
);
