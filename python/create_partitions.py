stations = {
    'land': {'report': {0,1,2}, 'platform': {'0'} },
    'marine': {'report': {0}, 'platform': {'ship','drifting_buoy','moored_buoy','coastal','other'} ,
               'platform_constraints': {} }
}

inv_stations = {
    'land': 1,
    'marine': 2
}

#inv_platforms = {}

#for key, value in platforms.items():
#    inv_platforms[value] = inv_platforms.get(value,[])
#    inv_platforms[value].append( key )

outfile = open('create_header_children.sql', 'w')
print('\connect c3s311a', file = outfile)
# generate child tables for header
for year in range( 1753, 2022, 1):
    tmin = '{}-01-01 00:00:0.0+0'.format(year)
    tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)
    for station, values in stations.items():
        for report in values['report']:
           table_name = '__INSERT_SCHEMA__.header_{}_{}_{}'.format( year, station, report )
           table_short = 'header_{}_{}_{}'.format( year, station, report )
           station_constraint = inv_stations[station]
           print('')
           print( 'create table {}() inherits ( __INSERT_SCHEMA__.header_table );'.format( table_name ), file = outfile )
           print( 'alter table {} add constraint {}_pk primary key (report_id);'.format( table_name, table_short ), file = outfile )
           print( 'alter table {} add constraint {}_report check( report_type = {});'.format( table_name, table_short, report), file = outfile)
           print( 'alter table {} add constraint {}_station check( station_type = {} );'.format(table_name, table_short, station_constraint) , file = outfile)
           print( "alter table {} add constraint {}_date check(report_timestamp >= TIMESTAMP WITH TIME ZONE '{}' and report_timestamp < TIMESTAMP WITH TIME ZONE '{}' );".format(table_name, table_short, tmin, tmax ) , file = outfile)
outfile.close()

outfile = open('create_header_triggers.sql', 'w')
print('\connect c3s311a', file = outfile)
outfile2 = open('validate_header_triggers.sql','w')
print('\connect c3s311a', file = outfile2)

# now insert trigger for header
print( '' )
print( 'CREATE OR REPLACE FUNCTION __INSERT_SCHEMA__.header_insert_trigger()', file = outfile)
print( '    RETURNS TRIGGER AS $$', file = outfile)
print( '    BEGIN', file = outfile)
for year in range( 1753, 2022, 1):
    tmin = '{}-01-01 00:00:0.0+0'.format(year)
    tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)
    print( "        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '{}' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '{}' THEN".format( tmin, tmax), file = outfile)
    counter = 0
    for station, values in stations.items():
        station_constraint = inv_stations[station]
        if( counter == 0):
            print('            IF NEW.station_type = {} THEN'.format(station_constraint) , file = outfile)
        else:
            print('            ELSIF NEW.station_type = {} THEN'.format(station_constraint), file = outfile)
        counter2 = 0
        for report in values['report']:
            table_name = '__INSERT_SCHEMA__.header_{}_{}_{}'.format( year, station, report )
            table_short = 'header_{}_{}_{}'.format( year, station, report )
            
            print('CREATE TRIGGER header_table_insert_check_{}_{}_{} BEFORE INSERT ON'.format(year, station, report), file = outfile2)
            print('    {}'.format( table_name ), file = outfile2)
            print('FOR EACH ROW', file = outfile2)
            print('    EXECUTE PROCEDURE __INSERT_SCHEMA__.validate_header_table();', file = outfile2)
            
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
print('\connect c3s311a', file = outfile)
print( 'CREATE TRIGGER header_insert_trigger', file = outfile)
print( 'BEFORE INSERT ON __INSERT_SCHEMA__.header_table', file = outfile)
print( 'FOR EACH ROW EXECUTE PROCEDURE __INSERT_SCHEMA__.header_insert_trigger();', file = outfile)
outfile.close()
# now repeat for observation tables

outfile = open('create_observations_children.sql', 'w')
print('\connect c3s311a', file = outfile)
# generate child tables for header
for year in range( 1753, 2022, 1):
    tmin = '{}-01-01 00:00:0.0+0'.format(year)
    tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)
    for station, values in stations.items():
        for report in values['report']:
            table_name = '__INSERT_SCHEMA__.observations_{}_{}_{}'.format( year, station, report )
            table_short = 'observations_{}_{}_{}'.format( year, station, report )
            station_constraint = inv_stations[station]
            print( 'create table {}() inherits ( __INSERT_SCHEMA__.observations_table );'.format( table_name ), file = outfile )
            print( 'alter table {} add constraint {}_pk primary key (observation_id);'.format( table_name, table_short ), file = outfile )
            print( 'alter table {} add constraint {}_report check( report_type = {});'.format( table_name, table_short, report), file = outfile)
            print( 'alter table {} add constraint {}_station check( station_type = {} );'.format(table_name, table_short, station_constraint) , file = outfile)
            print( "alter table {} add constraint {}_date check(date_time >= TIMESTAMP WITH TIME ZONE '{}' and date_time < TIMESTAMP WITH TIME ZONE '{}' );".format(table_name, table_short, tmin, tmax ) , file = outfile)
outfile.close()


outfile = open('create_observations_triggers.sql', 'w')
print('\connect c3s311a', file = outfile)
outfile2 = open('validate_observation_triggers.sql','w')
print('\connect c3s311a', file = outfile2)
# now insert trigger for observations
print( '' )
print( 'CREATE OR REPLACE FUNCTION __INSERT_SCHEMA__.observations_insert_trigger()', file = outfile)
print( '    RETURNS TRIGGER AS $$', file = outfile)
print( '    BEGIN', file = outfile)
for year in range( 1753, 2022, 1):
    tmin = '{}-01-01 00:00:0.0+0'.format(year)
    tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)
    print( "        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '{}' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '{}' THEN".format( tmin, tmax), file = outfile)
    counter = 0
    for station, values in stations.items():
        station_constraint = inv_stations[station]
        if( counter == 0):
            print('            IF NEW.station_type = {} THEN'.format(station_constraint) , file = outfile)
        else:
            print('            ELSIF NEW.station_type = {} THEN'.format(station_constraint), file = outfile)
        counter2 = 0
        for report in values['report']:
            table_name = '__INSERT_SCHEMA__.observations_{}_{}_{}'.format( year, station, report )
            table_short = 'observations_{}_{}_{}'.format( year, station, report )
               
            print('CREATE TRIGGER observations_table_insert_check_{}_{}_{} BEFORE INSERT ON'.format(year, station, report), file = outfile2)
            print('    {}'.format( table_name ), file = outfile2)
            print('FOR EACH ROW', file = outfile2)
            print('    EXECUTE PROCEDURE __INSERT_SCHEMA__.validate_observations_table();', file = outfile2)
              
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
print('\connect c3s311a', file = outfile)
print( 'CREATE TRIGGER observations_insert_trigger', file = outfile)
print( 'BEFORE INSERT ON __INSERT_SCHEMA__.observations_table', file = outfile)
print( 'FOR EACH ROW EXECUTE PROCEDURE __INSERT_SCHEMA__.observations_insert_trigger();', file = outfile)
outfile.close()
