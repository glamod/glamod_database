#!/usr/bin/env python

"""
make-create-table-sql-lite.py
=============================

Writes sql scripts to main cdmlite table.

"""


import sys
sys.path.append('.')

from _common import *


SQL = f"""CREATE TABLE {schema}.observations (

    observation_id character varying NOT NULL PRIMARY KEY,
    data_policy_licence integer,
    date_time timestamp with time zone,
    date_time_meaning integer,
    observation_duration integer,
    longitude numeric,
    latitude numeric,
    report_type integer,
    height_above_surface numeric,
    observed_variable integer,
    units integer,
    observation_value numeric,
    value_significance integer,
    platform_type integer,
    station_type integer,
    primary_station_id character varying,
    station_name character varying,
    quality_flag integer,
    source_id character varying,
    date date

){tablespace_sql};

ALTER TABLE {schema}.observations ADD COLUMN location geography(Point, 4326);"""


outfile = open('lite-create-table.sql','w')
print(SQL, file=outfile)
outfile.close()
