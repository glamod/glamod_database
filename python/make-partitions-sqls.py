#!/usr/bin/env python

import sys
sys.path.append('.')

from _common import *


outfile = open('create_header_children.sql', 'w')

# generate child tables for header
for year in all_years:

    tmin = '{}-01-01 00:00:0.0+0'.format(year)
    tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)

    for station, values in stations.items():

        if year not in year_ranges[station]: continue

        for report in values['report']:

           table_name = '{}.header_{}_{}_{}'.format( schema, year, station, report )
           table_short = 'header_{}_{}_{}'.format( year, station, report )
           station_constraint = inv_stations[station]

           print( 'create table {}() inherits ( {}.header_table );'.format( table_name, schema ), file = outfile )
           print( 'alter table {} add constraint {}_pk primary key (report_id);'.format( table_name, table_short ), file = outfile )
           print( 'alter table {} add constraint {}_report check( report_type = {});'.format( table_name, table_short, report), file = outfile)
           print( 'alter table {} add constraint {}_station check( station_type = {} );'.format(table_name, table_short, station_constraint) , file = outfile)
           print( "alter table {} add constraint {}_date check(report_timestamp >= TIMESTAMP WITH TIME ZONE '{}' and report_timestamp < TIMESTAMP WITH TIME ZONE '{}' );".format(table_name, table_short, tmin, tmax ) , file = outfile)
outfile.close()

outfile = open('create_header_triggers.sql', 'w')
outfile2 = open('validate_header_triggers.sql','w')

# now insert trigger for header
print( 'CREATE OR REPLACE FUNCTION {}.header_insert_trigger()'.format( schema ), file = outfile)
print( '    RETURNS TRIGGER AS $$', file = outfile)
print( '    BEGIN', file = outfile)

for year in all_years:
    tmin = '{}-01-01 00:00:0.0+0'.format(year)
    tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)
    print( "        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '{}' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '{}' THEN".format( tmin, tmax), file = outfile)
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
            table_name = '{}.header_{}_{}_{}'.format( schema, year, station, report )
            table_short = 'header_{}_{}_{}'.format( year, station, report )
            
            print('CREATE TRIGGER header_table_insert_check_{}_{}_{} BEFORE INSERT ON'.format(year, station, report), file = outfile2)
            print('    {}'.format( table_name ), file = outfile2)
            print('FOR EACH ROW', file = outfile2)
            print('    EXECUTE PROCEDURE {}.validate_header_table();'.format( schema ), file = outfile2)
            
            if( counter2 == 0):
                print('                IF NEW.report_type = {} THEN'.format(report) , file = outfile)
                print('                    INSERT INTO {} VALUES(NEW.*);'.format(table_name), file = outfile)
            else:
                print('                ELSIF NEW.report_type = {} THEN'.format(report), file = outfile)
                print('                    INSERT INTO {} VALUES(NEW.*);'.format(table_name), file = outfile)
            counter2 += 1
        print('                ELSE', file = outfile)
        print("                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';", file = outfile)
        print('                END IF;', file = outfile)
        counter += 1
    print('            ELSE', file = outfile)
    print("                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';", file = outfile)
    print('            END IF;', file = outfile)
    print('        END IF;', file = outfile)
print( '      RETURN NULL;', file = outfile)
print( '    END', file = outfile)
print( '$$', file = outfile)
print( 'LANGUAGE plpgsql;', file = outfile)
outfile.close()
outfile2.close()


outfile = open('header_add_trigger.sql','w')
print( 'CREATE TRIGGER header_insert_trigger', file = outfile)
print( 'BEFORE INSERT ON {}.header_table'.format( schema ), file = outfile)
print( 'FOR EACH ROW EXECUTE PROCEDURE {}.header_insert_trigger();'.format( schema ), file = outfile)
outfile.close()
# now repeat for observation tables

outfile = open('create_observations_children.sql', 'w')

# generate child tables for header
for year in all_years:
    tmin = '{}-01-01 00:00:0.0+0'.format(year)
    tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)

    for station, values in stations.items():
        if year not in year_ranges[station]: continue

        for report in values['report']:
            table_name = '{}.observations_{}_{}_{}'.format( schema, year, station, report )
            table_short = 'observations_{}_{}_{}'.format( year, station, report )
            station_constraint = inv_stations[station]
            print( 'create table {}() inherits ( {}.observations_table );'.format( table_name, schema ), file = outfile )
            print( 'alter table {} add constraint {}_pk primary key (observation_id);'.format( table_name, table_short ), file = outfile )
            print( 'alter table {} add constraint {}_report check( report_type = {});'.format( table_name, table_short, report), file = outfile)
            print( 'alter table {} add constraint {}_station check( station_type = {} );'.format(table_name, table_short, station_constraint) , file = outfile)
            print( "alter table {} add constraint {}_date check(date_time >= TIMESTAMP WITH TIME ZONE '{}' and date_time < TIMESTAMP WITH TIME ZONE '{}' );".format(table_name, table_short, tmin, tmax ) , file = outfile)
outfile.close()


outfile = open('create_observations_triggers.sql', 'w')
outfile2 = open('validate_observation_triggers.sql','w')
# now insert trigger for observations
print( 'CREATE OR REPLACE FUNCTION {}.observations_insert_trigger()'.format( schema ), file = outfile)
print( '    RETURNS TRIGGER AS $$', file = outfile)
print( '    BEGIN', file = outfile)

for year in all_years:

    tmin = '{}-01-01 00:00:0.0+0'.format(year)
    tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)
    print( "        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '{}' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '{}' THEN".format( tmin, tmax), file = outfile)
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
            table_name = '{}.observations_{}_{}_{}'.format( schema, year, station, report )
            table_short = 'observations_{}_{}_{}'.format( year, station, report )
               
            print('CREATE TRIGGER observations_table_insert_check_{}_{}_{} BEFORE INSERT ON'.format(year, station, report), file = outfile2)
            print('    {}'.format( table_name ), file = outfile2)
            print('FOR EACH ROW', file = outfile2)
            print('    EXECUTE PROCEDURE {}.validate_observations_table();'.format( schema ), file = outfile2)
              
            if( counter2 == 0):
                print('                IF NEW.report_type = {} THEN'.format(report) , file = outfile)
                print('                    INSERT INTO {} VALUES(NEW.*);'.format(table_name), file = outfile)
            else:
                print('                ELSIF NEW.report_type = {} THEN'.format(report), file = outfile)
                print('                    INSERT INTO {} VALUES(NEW.*);'.format(table_name), file = outfile)
            counter2 += 1
        print('                ELSE', file = outfile)
        print("                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';", file = outfile)
        print('                END IF;', file = outfile)
        counter += 1
    print('            ELSE', file = outfile)
    print("                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';", file = outfile)
    print('            END IF;', file = outfile)
    print('        END IF;', file = outfile)

print( '      RETURN NULL;', file = outfile)
print( '    END', file = outfile)
print( '$$', file = outfile)
print( 'LANGUAGE plpgsql;', file = outfile)

outfile.close()
outfile2.close()

outfile = open('observations_add_trigger.sql','w')
print( 'CREATE TRIGGER observations_insert_trigger', file = outfile)
print( 'BEFORE INSERT ON {}.observations_table'.format( schema ), file = outfile)
print( 'FOR EACH ROW EXECUTE PROCEDURE {}.observations_insert_trigger();'.format( schema ), file = outfile)
outfile.close()
