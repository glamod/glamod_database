CREATE TABLE __INSERT_SCHEMA__.station_configuration (
  primary_id VARCHAR,
  primary_id_scheme INT NOT NULL REFERENCES __INSERT_SCHEMA__.id_scheme(scheme),
  record_number INT,
  secondary_id VARCHAR[],
  secondary_id_scheme INT[],
  station_name VARCHAR,
  station_abbreviation VARCHAR,
  alternative_name VARCHAR[],
  station_crs INT REFERENCES __INSERT_SCHEMA__.crs(crs),
  longitude NUMERIC,
  latitude NUMERIC,
  local_gravity NUMERIC,
  start_date TIMESTAMP,
  end_date TIMESTAMP,
  station_type INT REFERENCES __INSERT_SCHEMA__.station_type(type),
  platform_type INT REFERENCES __INSERT_SCHEMA__.platform_type(type),
  platform_sub_type INT REFERENCES __INSERT_SCHEMA__.platform_sub_type(sub_type),
  operating_institute VARCHAR REFERENCES __INSERT_SCHEMA__.organisation(organisation_id),
  operating_territory INT REFERENCES __INSERT_SCHEMA__.sub_region(sub_region),
  city VARCHAR,
  contact VARCHAR[],
  role INT[],
  observing_frequency INT REFERENCES __INSERT_SCHEMA__.observing_frequency(frequency),
  reporting_time INT[],
  telecommunication_method INT[],
  station_automation INT REFERENCES __INSERT_SCHEMA__.automation_status(automation),
  measuring_system_model VARCHAR[],
  measuring_system_id VARCHAR[],
  observed_variables INT[],
  comment VARCHAR,
  optional_data INT REFERENCES __INSERT_SCHEMA__.data_present(flag),
  bbox_min_longitude NUMERIC,
  bbox_max_longitude NUMERIC,
  bbox_min_latitude NUMERIC,
  bbox_max_latitude NUMERIC,
  metadata_contact VARCHAR[],
  metadata_contact_role INT[],
  location geography,
  PRIMARY KEY(primary_id, primary_id_scheme, record_number)
);
