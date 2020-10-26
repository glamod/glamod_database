#!/usr/bin/env python

import sys
sys.path.append('.')

from _common import *


def create_partitions_triggers_header_tables(cdm_type='full'):

    main_table = 'header_table'

    # 1. Generate partition tables for full.header_table
    outfile = open(f'{cdm_type}-create_{main_table}_children.sql', 'w')

    for year in all_years:

        tmin = '{}-01-01 00:00:0.0+0'.format(year)
        tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)

        for station, values in stations.items():

            if year not in year_ranges[station]: continue

            for report in values['report']:

                table_short = f'{main_table}_{year}_{station}_{report}'
                table_name = f'{schema}.{table_short}'

                station_constraint = inv_stations[station]

                print(f'create table {table_name}() inherits ( {schema}.{main_table} );', file = outfile )
                print(f'alter table {table_name} add constraint {table_short}_pk primary key (report_id);', file = outfile )
                print(f'alter table {table_name} add constraint {table_short}_report check( report_type = {report} );', file = outfile)
                print(f'alter table {table_name} add constraint {table_short}_station check( station_type = {station_constraint} );', file = outfile)
    
                print(f"alter table {table_name} add constraint {table_short}_date check(report_timestamp >= TIMESTAMP WITH TIME ZONE '{tmin}' and report_timestamp < TIMESTAMP WITH TIME ZONE '{tmax}' );", file = outfile)

    outfile.close()


    # 2. Create triggers and validaters for full.header_table
    outfile = open(f'{cdm_type}-create_{main_table}_triggers.sql', 'w')
    outfile2 = open(f'{cdm_type}-validate_{main_table}_triggers.sql','w')

    print(f'CREATE OR REPLACE FUNCTION {schema}.{main_table}_insert_trigger()', file = outfile)
    print('    RETURNS TRIGGER AS $$', file = outfile)
    print('    BEGIN', file = outfile)

    for year in all_years:
        tmin = '{}-01-01 00:00:0.0+0'.format(year)
        tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)
        print(f"        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '{tmin}' " 
              f"AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '{tmax}' THEN", file = outfile)

        counter = 0

        for station, values in stations.items():
            if year not in year_ranges[station]: continue

            station_constraint = inv_stations[station]
            if( counter == 0):
                print('            IF NEW.station_type = {} THEN'.format(station_constraint) , file = outfile)
            else:
                print('            ELSIF NEW.station_type = {} THEN'.format(station_constraint), file = outfile)
            counter2 = 0

            for report in values['report']:

                table_short = f'{main_table}_{year}_{station}_{report}'
                table_name = f'{schema}.{table_short}'
                
                print(f'CREATE TRIGGER {main_table}_insert_check_{year}_{station}_{report} BEFORE INSERT ON', file = outfile2)
                print(f'    {table_name}', file = outfile2)
                print('FOR EACH ROW', file = outfile2)
                print(f'    EXECUTE PROCEDURE {schema}.validate_{main_table}();', file = outfile2)
                
                if( counter2 == 0):
                    print('                IF NEW.report_type = {} THEN'.format(report) , file = outfile)
                    print('                    INSERT INTO {} VALUES(NEW.*);'.format(table_name), file = outfile)
                else:
                    print('                ELSIF NEW.report_type = {} THEN'.format(report), file = outfile)
                    print('                    INSERT INTO {} VALUES(NEW.*);'.format(table_name), file = outfile)
                counter2 += 1
            print('                ELSE', file = outfile)
            print(f"                    RAISE EXCEPTION 'Invalid report type in {main_table}_insert_trigger';", file = outfile)
            print('                END IF;', file = outfile)
            counter += 1
        print('            ELSE', file = outfile)
        print(f"                RAISE EXCEPTION 'Invalid station type in {main_table}_insert_trigger';", file = outfile)
        print('            END IF;', file = outfile)
        print('        END IF;', file = outfile)
    print( '      RETURN NULL;', file = outfile)
    print( '    END', file = outfile)
    print( '$$', file = outfile)
    print( 'LANGUAGE plpgsql;', file = outfile)
    outfile.close()
    outfile2.close()

    outfile = open(f'{cdm_type}-{main_table}_add_triggers.sql','w')
    print(f'CREATE TRIGGER {main_table}_insert_trigger', file = outfile)
    print(f'BEFORE INSERT ON {schema}.{main_table}', file = outfile)
    print(f'FOR EACH ROW EXECUTE PROCEDURE {schema}.{main_table}_insert_trigger();', file = outfile)
    outfile.close()


def create_partitions_triggers_observations(cdm_type):
    if cdm_type not in ('full', 'lite'):
        raise Exception(f'Unknown cdm_type: {cdm_type}.')

    if cdm_type == 'full':
        main_table = 'observations_table'
    else:
        # lite
        main_table = 'observations'

    # 3. Generate partition tables for full.observations_table
    outfile = open(f'{cdm_type}-create_observations_children.sql', 'w')

    for year in all_years:
        tmin = '{}-01-01 00:00:0.0+0'.format(year)
        tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)

        for station, values in stations.items():
            if year not in year_ranges[station]: continue

            for report in values['report']:
                table_short = f'{main_table}_{year}_{station}_{report}'
                table_name = f'{schema}.{table_short}'

                station_constraint = inv_stations[station]

                print(f'create table {table_name}() inherits ( {schema}.{main_table} );', file = outfile )
                print(f'alter table {table_name} add constraint {table_short}_pk primary key (observation_id);', file = outfile )
                print(f'alter table {table_name} add constraint {table_short}_report check( report_type = {report});', file = outfile)
                print(f'alter table {table_name} add constraint {table_short}_station check( station_type = {station_constraint} );', file = outfile)
                print(f"alter table {table_name} add constraint {table_short}_date check(date_time >= TIMESTAMP WITH TIME ZONE '{tmin}' and date_time < TIMESTAMP WITH TIME ZONE '{tmax}' );", file = outfile)

    outfile.close()


    # 4. Insert triggers for full.observations_table

    outfile = open(f'{cdm_type}-create_{main_table}_triggers.sql', 'w')
    outfile2 = open(f'{cdm_type}-validate_{main_table}_triggers.sql','w')

    # now insert trigger for observations
    print(f'CREATE OR REPLACE FUNCTION {schema}.{main_table}_insert_trigger()', file = outfile)
    print('    RETURNS TRIGGER AS $$', file = outfile)
    print('    BEGIN', file = outfile)

    for year in all_years:

        tmin = '{}-01-01 00:00:0.0+0'.format(year)
        tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)
        print(f"        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '{tmin}' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '{tmax}' THEN", file = outfile)
        counter = 0

        for station, values in stations.items():
            if year not in year_ranges[station]: continue

            station_constraint = inv_stations[station]
            if( counter == 0):
                print(f'            IF NEW.station_type = {station_constraint} THEN', file = outfile)
            else:
                print(f'            ELSIF NEW.station_type = {station_constraint} THEN', file = outfile)
            counter2 = 0

            for report in values['report']:
                table_short = f'{main_table}_{year}_{station}_{report}'
                table_name = f'{schema}.{table_short}'
                
                print(f'CREATE TRIGGER {main_table}_insert_check_{year}_{station}_{report} BEFORE INSERT ON', file = outfile2)
                print(f'    {table_name}', file = outfile2)
                print('FOR EACH ROW', file = outfile2)
                print(f'    EXECUTE PROCEDURE {schema}.validate_{main_table}();', file = outfile2)
                
                if( counter2 == 0):
                    print('                IF NEW.report_type = {} THEN'.format(report) , file = outfile)
                    print('                    INSERT INTO {} VALUES(NEW.*);'.format(table_name), file = outfile)
                else:
                    print('                ELSIF NEW.report_type = {} THEN'.format(report), file = outfile)
                    print('                    INSERT INTO {} VALUES(NEW.*);'.format(table_name), file = outfile)
                counter2 += 1
            print('                ELSE', file = outfile)
            print(f"                    RAISE EXCEPTION 'Invalid report type in {main_table}_insert_trigger';", file = outfile)
            print('                END IF;', file = outfile)
            counter += 1
        print('            ELSE', file = outfile)
        print(f"                RAISE EXCEPTION 'Invalid station type in {main_table}_insert_trigger';", file = outfile)
        print('            END IF;', file = outfile)
        print('        END IF;', file = outfile)

    print( '      RETURN NULL;', file = outfile)
    print( '    END', file = outfile)
    print( '$$', file = outfile)
    print( 'LANGUAGE plpgsql;', file = outfile)

    outfile.close()
    outfile2.close()

    outfile = open(f'{cdm_type}-{main_table}_add_triggers.sql','w')
    print(f'CREATE TRIGGER {main_table}_insert_trigger', file = outfile)
    print(f'BEFORE INSERT ON {schema}.{main_table}', file = outfile)
    print(f'FOR EACH ROW EXECUTE PROCEDURE {schema}.{main_table}_insert_trigger();', file = outfile)
    outfile.close()


if __name__ == '__main__':

    if schema.startswith('full'):
        create_partitions_triggers_header_tables()
        create_partitions_triggers_observations('full')
    else:
        # lite
        create_partitions_triggers_observations('lite')