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
-- Set base path for scripts etc
-- -------------------------------
\set basedir `pwd`
\set tabledefs '/pgdata/scripts/glamod_database/ddl/'
\set functiondefs '/pgdata/scripts/glamod_database/functions/'
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
-- Add functions
-- ----------------------------------------------
\cd :functiondefs
\i 'validate_profile_configuration_optional.ddl'
\i 'validate_sensor_configuration_optional.ddl'
\i 'validate_source_configuration_optional.ddl'
\i 'validate_station_configuration_optional.ddl'
\i 'source_configuration_trigger.ddl'
\i 'station_configuration_trigger.ddl'
\i 'header_table_trigger.ddl'
\i 'observations_table_trigger.ddl'
\i 'create_header_children.sql'
\i 'create_header_triggers.sql'
\i 'create_observations_children.sql'
\i 'create_observations_triggers.sql'
\i 'header_add_trigger.sql'
\i 'observations_add_trigger.sql'
\i 'validate_header_triggers.sql'
\i 'validate_observation_triggers.sql'
-- ----------------------------------------------
-- Now import initial tables
-- NOTE: order is important!
-- ----------------------------------------------
\cd :codetables
\COPY application_area FROM 'application_area.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY automation_status FROM 'automation_status.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY calibration_status FROM 'calibration_status.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY communication_method FROM 'communication_method.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY region FROM 'region.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY sub_region FROM 'sub_region.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY conversion_flag FROM 'conversion_flag.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY crs FROM 'crs.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY data_policy_licence FROM 'data_policy_licence.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY data_present FROM 'data_present.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY duplicate_status FROM 'duplicate_status.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY duration FROM 'duration.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY events_at_station FROM 'events_at_station.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY id_scheme FROM 'id_scheme.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY instrument_exposure_quality FROM 'instrument_exposure_quality.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY kind FROM 'kind.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY location_method FROM 'location_method.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY location_quality FROM 'location_quality.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY meaning_of_time_stamp FROM 'meaning_of_time_stamp.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY observation_value_significance FROM 'observation_value_significance.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY observed_variable FROM 'observed_variable.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY observing_frequency FROM 'observing_frequency.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY observing_method FROM 'observing_method.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY observing_programme FROM 'observing_programme.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY platform_type FROM 'platform_type.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY platform_sub_type FROM 'platform_sub_type.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY processing_level FROM 'processing_level.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY profile_type FROM 'profile_type.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY report_type FROM 'report_type.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY quality_flag FROM 'quality_flag.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY sampling_strategy FROM 'sampling_strategy.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY sea_level_datum FROM 'sea_level_datum.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY secondary_variable FROM 'secondary_variable.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY source_format FROM 'source_format.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY spatial_representativeness FROM 'spatial_representativeness.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY standard_time FROM 'standard_time.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY station_type FROM 'station_type.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY time_quality FROM 'time_quality.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY time_reference FROM 'time_reference.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY traceability FROM 'traceability.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY update_frequency FROM 'update_frequency.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY z_coordinate_method FROM 'z_coordinate_method.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY z_coordinate_type FROM 'z_coordinate_type.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
-- Ignore quote character when copying from units since double quote is used as a value
\COPY units FROM 'units.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NULL' QUOTE AS E'\b'
\COPY profile_configuration_fields FROM 'profile_configuration_fields.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY profile_configuration_codes FROM 'profile_configuration_codes.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY sensor_configuration_fields FROM 'sensor_configuration_fields.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY sensor_configuration_codes FROM 'sensor_configuration_codes.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY source_configuration_fields FROM 'source_configuration_fields.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY source_configuration_codes FROM 'source_configuration_codes.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY station_configuration_fields FROM 'station_configuration_fields.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY station_configuration_codes FROM 'station_configuration_codes.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'

-- Now import existing data tables
\cd :datatables
\COPY conversion_method FROM 'conversion_method.dat' WITH CSV HEADER DELIMITER AS E'\t' NULL AS 'NA'
\COPY organisation FROM 'organisation.dat' WITH CSV DELIMITER AS '|' NULL AS 'NA'
\COPY contact FROM 'contact.dat' WITH CSV DELIMITER AS '|' NULL AS 'NA'

\cd :basedir
-- ---------------------------------------
-- End of script, database should now be
-- ready for partitioning and creation of 
-- child tables
-- ---------------------------------------
-- Partition on
-- Year (1800 to present)
-- Station type (Land | Sea)
-- Report type
-- Platform type
-- Region (Land)
-- Sub-region (Land)
-- Variable


