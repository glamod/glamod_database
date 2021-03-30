#!/usr/bin/env python

import sys
sys.path.append('.')

from _common import *


if schema.startswith('full'):
    # cdmfull
    table_type_indexes = {
        'observations_table': ('date_time', 'observed_variable'), 
        'header_table': ('report_timestamp', 'station_name', 'primary_station_id')
    }
    prefix = 'full'
else:
    # cdmlite
    table_type_indexes = {
        'observations': ('date_time', 'observed_variable', 'station_name', 'primary_station_id')
    }
    prefix = 'lite'


fpath = f'{prefix}-create_indexes.sql'
outfile = open(fpath, 'w')


for main_table, index_fields in table_type_indexes.items():

    print(f'[INFO] Writing indexes for {main_table}')
    for year in all_years:

        for station, values in stations.items():
        
            if year not in year_ranges[station]: continue
        
            for report in values['report']:
            
                table_short = f'{main_table}_{year}_{station}_{report}'
                table_name = f'{schema}.{table_short}'

                for idx_field in index_fields: 
                    print(f'CREATE INDEX {table_short}_{idx_field}_idx ON {table_name} ({idx_field}){tablespace_sql};', file=outfile) 

                # gist index is the location index...
                print(f'CREATE INDEX {table_short}_location_gist_idx ON {table_name} USING gist ( location ){tablespace_sql};', file=outfile)
                print(f'[INFO] Worked on: {table_name}')

outfile.close()
print(f'[INFO] Wrote: {fpath}')


