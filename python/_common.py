import os

schema = os.environ['GLAMOD_DB_SCHEMA']

# Define tablespace code for each schema
tablespace_sql = {
    'lite_2_0': '',
    'lite_3_0': ' TABLESPACE rel_3_0'
    'full_2_0': '',
    'full_3_0': ' TABLESPACE rel_3_0'
}[schema]

import datetime
current_year = datetime.datetime.now().year

stations = {
    'land': {'report': {0, 2, 3}, 'platform': {'0'} },
    'marine': {'report': {0}, 'platform': {'ship','drifting_buoy','moored_buoy','coastal','other'} ,
               'platform_constraints': {} }
}

inv_stations = {
    'land': 1,
    'marine': 2
}


start_year = 1755

year_ranges = {
    "land": range(1755, current_year + 1),
    "marine": range(1800, current_year + 1)
}

all_years = range(start_year, current_year + 1)

