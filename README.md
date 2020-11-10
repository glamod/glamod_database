# Glamod_database
Scripts to perform initial build of PostgreSQL database.

## Overview
The glamod database is built by execution of a parent SQL script, make_database.sql. 
This in turn calls other scripts to:
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
4) Define triggers and trigger functions for checking validity of the data.
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
    
## Contents
- `code_tables`: tab separated file containing code tables from the common data model.
- `data_tables`: preliminary (non-observational) data tables, e.g. data for the organisations table.
- `ddl`: SQL / DDL files defining the tables from the common data model, including child tables for partitioning.
- `functions`: SQL / DDL containing definitions of trigger functions.
- `python`: python script used to create child tables SQL statements (NOTE: out of date and needs updating to reflect new structure)
- `triggers`: SQL code to add triggers to tables.