#!/usr/bin/env python

import sys
sys.path.append('.')

from _common import *

fpath = 'create_indexes.sql'
outfile = open(fpath, 'w')


table_type_indexes = {
    'observations': ('date_time', 'observed_variable'), 
    'header': ('report_timestamp',)
}


for table_type in ('observations', 'header'):

  index_fields = table_type_indexes[table_type]

  print(f'[INFO] Writing {table_type}_table index SQL...')
  for year in all_years:

    for station, values in stations.items():
    
        if year not in year_ranges[station]: continue
    
        for report in values['report']:
        
           table_name = '{}.{}_table_{}_{}_{}'.format( schema, table_type, year, station, report )
           table_short = '{}_table_{}_{}_{}'.format( table_type, year, station, report )
           
           for idx_field in index_fields: 
               print('CREATE INDEX {}_{}_idx ON {} ({});'.format(table_short, idx_field, table_name, idx_field), file=outfile) 

           # gist index is the location index...
           print('CREATE INDEX {}_{}_gist_idx ON {} USING gist ( {} );'.format(table_short, 'location', table_name, 'location'), file=outfile)
           print(f'[INFO] Worked on: {table_name}')

outfile.close()
print(f'[INFO] Wrote: {fpath}')


