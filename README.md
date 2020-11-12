# Glamod_database
Scripts to perform initial build of PostgreSQL database.

## Overview
The glamod database is built by execution of a parent SQL script, make_database.sql. Within this script 
(and others called by it) the schema name has been parameterised with the variable `cdm_v1`. 
Before running the variable needs to be replaced with the schema name, e.g. `cdm_v1`.

The general order of the script is as follow:

1) Create the schema in the database.
    - cdm_v1
2) Create the code tables in the schema according to the common data model (scripts / definitions under ./ddl path)
(**NOTE: order is important due to references between tables**).
    - cdm_v1.application_area 
    - cdm_v1.automation_status
    - ...
    - cdm_v1.station_configuration_codes
3) Create the data tables in the schema according to the common data model (scripts / definitions under ./ddl path).
    - cdm_v1.profile_configuration
    - cdm_v1.header_table
    - ...
    - cdm_v1.uncertainty_table
4) Partition tables (scripts / definitions under ./ddl path)
    - cdm_v1.header_table_yyyy_domain_report
    - cdm_v1.observations_table_yyyy_domain_report    
4) Define the following trigger functions and trigger for checking validity of the data.
    - functions (./functions path)
        - cdm_v1.header_insert_trigger()
        - cdm_v1.observations_insert_trigger()
        - cdm_v1.validate_header_table()      
        - cdm_v1.validate_observations_table()
        - cdm_v1.validate_xxxx_configuration_optional()
        - cdm_v1.validate_station_configuration()
        - cdm_v1.validate_source_configuration()              
    - triggers (./triggers path)
        - header_insert_trigger
        - observations_insert_trigger
        - validate_header_table  
        - validate_observations_table
        - validate_xxxx_configuration_optional
        - validate_station_configuration
        - validate_source_configuration
5) Import code tables (./code_tables path)
    - cdm_v1.application_area
    - ...
    - cdm_v1.station_configuration_codes
6) Import initial (non observation) data tables (./data_tables)
    - cdm_v1.conversion_method
    - cdm_v1.organisation
    - cdm_v1.contact

## Instructions:
- Log in to VM hosting database
- Edit make_database.sql to set variables / paths tp point to correct location 
(e.g. \set basedir commands)
- Run script using the following (updating connection settings as required): 

    `psql -f make_database.sql -h localhost -p 5432 -d postgres`
- Note: we could parameterise the schema name natively, removing the need to do a global replace on files before running.
e.g. 

    `psql --set=schema="$__INSERT_SCHEMA__" -f make_database.sql -h localhost -p 5432 -d postgres`

    and replace the `__INSERT_SCHEMA__` with `:schema` within the sql files. This has not been tested yet.  

## Contents
- `code_tables`: tab separated file containing code tables from the common data model.
- `data_tables`: preliminary (non-observational) data tables, e.g. data for the organisations table.
- `ddl`: SQL / DDL files defining the tables from the common data model, including child tables for partitioning.
- `functions`: SQL / DDL containing definitions of trigger functions.
- `python`: python script used to create child tables SQL statements (NOTE: out of date and needs updating to reflect new structure)
- `triggers`: SQL code to add triggers to tables.

## Functions / Trigger functions
| File | Function name | Summary |
| ---- | ------------- | ------- |
| ./functions/header_insert_trigger.sql | `__INSERT_SCHEMA__.header_insert_trigger()` | Inserts report into appropriate child header table based on date, station type and report type|
| ./functions/observations_insert_trigger.sql | `__INSERT_SCHEMA__.observations_insert_trigger()` | Inserts report into appropriate child observations table based on date, station type and report type|
| ./functions/validate_header_table.sql | `__INSERT_SCHEMA__.validate_header_table()` | Checks array fields are valid|
| ./functions/validate_observations_table.sql | `__INSERT_SCHEMA__.validate_observations_table()` | Checks array fields are valid. Also checks that code tables are valid for coded observations (e.g. present weather code)|
| ./functions/validate_xxxx_configuration_optional.sql | `__INSERT_SCHEMA__.validate_xxxx_configuration_optional()` | Checks that string representation of valus are consistent with specified kind|
| ./functions/validate_source_configuration.sql | `__INSERT_SCHEMA__.validate_source_configuration()` | Checks array fields are valid |
| ./functions/validate_station_configuration.sql | `__INSERT_SCHEMA__.validate_station_configuration()` | Checks array fields are valid |

## Triggers
| File | Trigger | Summary |
| ---- | ------------- | ------- |
| ./triggers/header_insert_trigger.sql | `header_insert_trigger` | Triggered on insert to `__INSERT_SCHEMA__.header_table`. Calls `__INSERT_SCHEMA__.header_insert_trigger()` for each row|
| ./triggers/observations_insert_trigger.sql | `observations_insert_trigger` |Triggered on insert to `__INSERT_SCHEMA__.observations_table`. Calls `__INSERT_SCHEMA__.observations_insert_trigger()` for each row|
| ./triggers/validate_header_table.sql | `header_table_insert_check_yyyy_ssss_rrrr` | Triggered on insert to `__INSERT_SCHEMA__.header_yyyy_ssss_rrrr` where `yyyy` is year (e.g. 1998), `ssss` the station type (land or marine) and `rrrr` the report type (0, 1 or 2; monthly, daily or subdaily respectively). Calls  `__INSERT_SCHEMA__.validate_header_table()`|
| ./triggers/validate_observations_table.sql | `observations_table_insert_check_yyyy_ssss_rrrr` |  Triggered on insert to `__INSERT_SCHEMA__.header_yyyy_ssss_rrrr` where `yyyy` is year (e.g. 1998), `ssss` the station type (land or marine) and `rrrr` the report type (0, 1 or 2; monthly, daily or subdaily respectively). Calls  `__INSERT_SCHEMA__.validate_observations_table()`|
| ./triggers/validate_xxxx_configuration_optional.sql | `validate_xxxx_configuration_optional` | Triggered on insert to `__INSERT_SCHEMA__.xxxx_configuration_optional` where `xxxx` is one of: profile, sensor, source, station. Calls `__INSERT_SCHEMA__.validate_xxxx_configuration_optional()`|
| ./triggers/validate_source_configuration.sql | `source_configuration_insert_check` | Triggered on insert to `__INSERT_SCHEMA__.source_configuration`. Calls `__INSERT_SCHEMA__.validate_source_configuration()` |
| ./triggers/validate_station_configuration.sql | `station_configuration_insert_check` | Triggered on insert to `__INSERT_SCHEMA__.station_configuration`. Calls `__INSERT_SCHEMA__.validate_station_configuration()` |