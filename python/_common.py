schema = "__INSERT_SCHEMA__"

import datetime
current_year = datetime.datetime.now().year

stations = {
    'land': {'report': {0,1,2}, 'platform': {'0'} },
    'marine': {'report': {0}, 'platform': {'ship','drifting_buoy','moored_buoy','coastal','other'} ,
               'platform_constraints': {} }
}

inv_stations = {
    'land': 1,
    'marine': 2
}

year_ranges = {
    "land": range(1761, current_year + 1),
    "marine": range(1946, current_year + 1)
}

all_years = range(1761, current_year + 1)

