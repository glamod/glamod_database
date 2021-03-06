-- ---------------------------------------------------------
-- Author: David I. Berry, UK National Oceanography Centre
-- Date: 22/09/2017
-- 
-- SQL Script to create database and schema for C3S 311a 
-- Common Data Model
--
-- Written as part of C3S 311a Lot 2 WP 3
-- ---------------------------------------------------------
-- Create database
-- ---------------
DROP DATABASE IF EXISTS c3s311a;
CREATE DATABASE c3s311a;
-- -------------------------------
-- now connect to new database
-- ---------------------------
\connect c3s311a
-- -------------------------------
-- enable extensions
-- -----------------
CREATE EXTENSION IF NOT EXISTS postgis;
-- -------------------------------
-- now add schema
-- --------------
CREATE SCHEMA __INSERT_SCHEMA__.
-- -------------------------------
-- Set base path for scripts etc
-- -------------------------------
\set basedir `pwd`
\set tabledefs '/pgdata/scripts/glamod_database/ddl/'
\set functiondefs '/pgdata/scripts/glamod_database/functions/'
\set triggers '/pgdata/scripts/glamod_database/triggers/'
\set codetables '/pgdata/scripts/glamod_database/code_tables/'
\set datatables '/pgdata/scripts/glamod_database/data_tables/'

-- -------------------------------
-- Create code tables
-- -------------------------------
\cd :tabledefs
\i 'application_area.ddl'
\i 'automation_status.ddl'
\i 'calibration_status.ddl'
\i 'communication_method.ddl'
\i 'region.ddl'
\i 'sub_region.ddl'
\i 'organisation.ddl'
\i 'contact.ddl'
\i 'conversion_flag.ddl'
\i 'crs.ddl'
\i 'data_policy_licence.ddl'
\i 'data_present.ddl'
\i 'duplicate_status.ddl'
\i 'duration.ddl'
\i 'events_at_station.ddl'
\i 'id_scheme.ddl'
\i 'instrument_exposure_quality.ddl'
\i 'kind.ddl'
\i 'location_method.ddl'
\i 'location_quality.ddl'
\i 'meaning_of_time_stamp.ddl'
\i 'observation_value_significance.ddl'
\i 'observed_variable.ddl'
\i 'observing_frequency.ddl'
\i 'observing_method.ddl'
\i 'observing_programme.ddl'
\i 'platform_type.ddl'
\i 'platform_sub_type.ddl'
\i 'processing_level.ddl'
\i 'profile_type.ddl'
\i 'quality_flag.ddl'
\i 'sampling_strategy.ddl'
\i 'sea_level_datum.ddl'
\i 'secondary_variable.ddl'
\i 'source_format.ddl'
\i 'spatial_representativeness.ddl'
\i 'standard_time.ddl'
\i 'station_type.ddl'
\i 'time_quality.ddl'
\i 'time_reference.ddl'
\i 'traceability.ddl'
\i 'update_frequency.ddl'
\i 'z_coordinate_method.ddl'
\i 'z_coordinate_type.ddl'
\i 'homogenisation_method.ddl'
\i 'homogenisation_operator.ddl'
\i 'method_of_estimating_uncertainty.ddl'
\i 'processing_code.ddl'
\i 'product_level.ddl'
\i 'product_status.ddl'
\i 'qc_method.ddl'
\i 'report_processing_codes.ddl'
\i 'report_processing_level.ddl'
\i 'report_type.ddl'
\i 'role.ddl'
\i 'uncertainty_method.ddl'
\i 'uncertainty_type.ddl'
\i 'conversion_method.ddl'
\i 'observation_code_table.ddl'
\i 'units.ddl'
\i 'profile_configuration.ddl'
\i 'profile_configuration_fields.ddl'
\i 'profile_configuration_codes.ddl'
\i 'profile_configuration_optional.ddl'
\i 'sensor_configuration.ddl'
\i 'sensor_configuration_fields.ddl'
\i 'sensor_configuration_codes.ddl'
\i 'sensor_configuration_optional.ddl'
\i 'source_configuration.ddl'
\i 'source_configuration_fields.ddl'
\i 'source_configuration_codes.ddl'
\i 'source_configuration_optional.ddl'
\i 'station_configuration.ddl'
\i 'station_configuration_fields.ddl'
\i 'station_configuration_codes.ddl'
\i 'station_configuration_optional.ddl'
\i 'header_table.ddl'
\i 'adjustment.ddl'
\i 'observations_table.ddl'
\i 'homogenisation_table.ddl'
\i 'qc_table.ddl'
\i 'uncertainty_table.ddl'
-- ----------------------------------------------
-- Create partitions for header and observation
-- tables
-- ----------------------------------------------
\i 'create_header_children.sql'
\i 'create_observations_children.sql'
-- ----------------------------------------------
-- Add trigger functions
-- ----------------------------------------------
\cd :functiondefs
\i 'header_insert_trigger.sql'
\i 'observations_insert_trigger.sql'
\i 'validate_header_table.sql'
\i 'validate_observations_table.sql'
\i 'validate_profile_configuration_optional.sql'
\i 'validate_sensor_configuration_optional.sql'
\i 'validate_source_configuration_optional.sql'
\i 'validate_station_configuration_optional.sql'
\i 'validate_source_configuration.sql'
\i 'validate_station_configuration.sql'
-- ----------------------------------------------
-- Now add triggers
-- ----------------------------------------------
\cd :triggers
\i 'header_insert_trigger.sql'
\i 'observations_insert_trigger.sql'
\i 'validate_header_table.sql'
\i 'validate_observations_table.sql'
\i 'validate_profile_configuration_optional.sql'
\i 'validate_sensor_configuration_optional.sql'
\i 'validate_source_configuration_optional.sql'
\i 'validate_station_configuration_optional.sql'
\i 'validate_source_configuration.sql'
\i 'validate_station_configuration.sql'
-- ----------------------------------------------
-- Now import initial (code) tables
-- NOTE: order is important due to relationships!
-- ----------------------------------------------
\cd :codetables
\COPY __INSERT_SCHEMA__.application_area FROM 'application_area.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.automation_status FROM 'automation_status.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.calibration_status FROM 'calibration_status.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.communication_method FROM 'communication_method.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.region FROM 'region.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.sub_region FROM 'sub_region.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.conversion_flag FROM 'conversion_flag.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.crs FROM 'crs.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.data_policy_licence FROM 'data_policy_licence.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.data_present FROM 'data_present.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.duplicate_status FROM 'duplicate_status.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.duration FROM 'duration.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.events_at_station FROM 'events_at_station.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.id_scheme FROM 'id_scheme.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.instrument_exposure_quality FROM 'instrument_exposure_quality.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.kind FROM 'kind.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.location_method FROM 'location_method.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.location_quality FROM 'location_quality.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.meaning_of_time_stamp FROM 'meaning_of_time_stamp.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.observation_value_significance FROM 'observation_value_significance.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.observed_variable FROM 'observed_variable.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.observing_frequency FROM 'observing_frequency.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.observing_method FROM 'observing_method.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.observing_programme FROM 'observing_programme.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.platform_type FROM 'platform_type.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.platform_sub_type FROM 'platform_sub_type.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.processing_level FROM 'processing_level.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.profile_type FROM 'profile_type.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.report_type FROM 'report_type.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.quality_flag FROM 'quality_flag.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.sampling_strategy FROM 'sampling_strategy.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.sea_level_datum FROM 'sea_level_datum.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.secondary_variable FROM 'secondary_variable.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.source_format FROM 'source_format.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.spatial_representativeness FROM 'spatial_representativeness.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.standard_time FROM 'standard_time.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.station_type FROM 'station_type.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.time_quality FROM 'time_quality.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.time_reference FROM 'time_reference.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.traceability FROM 'traceability.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.update_frequency FROM 'update_frequency.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.z_coordinate_method FROM 'z_coordinate_method.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.z_coordinate_type FROM 'z_coordinate_type.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.units FROM 'units.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NULL'
\COPY __INSERT_SCHEMA__.profile_configuration_fields FROM 'profile_configuration_fields.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.profile_configuration_codes FROM 'profile_configuration_codes.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.sensor_configuration_fields FROM 'sensor_configuration_fields.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.sensor_configuration_codes FROM 'sensor_configuration_codes.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.source_configuration_fields FROM 'source_configuration_fields.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.source_configuration_codes FROM 'source_configuration_codes.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.station_configuration_fields FROM 'station_configuration_fields.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.station_configuration_codes FROM 'station_configuration_codes.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'

-- Now import existing data tables
\cd :datatables
\COPY __INSERT_SCHEMA__.conversion_method FROM 'conversion_method.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.organisation FROM 'organisation.dat' WITH CSV DELIMITER AS '|' NULL AS 'NA'
\COPY __INSERT_SCHEMA__.contact FROM 'contact.dat' WITH CSV DELIMITER AS '|' NULL AS 'NA'

\cd :basedir
-- ---------------------------------------
-- End of script, database should now be
-- ready for partitioning ingestion of data
