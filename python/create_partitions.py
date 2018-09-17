stations = {
    'land': {'report': {0,1,2,3}, 'platform': {'0'} },
    'marine': {'report': {0,1}, 'platform': {'ship','drifting_buoy','moored_buoy','coastal','other'} ,
               'platform_constraints': {} }
}

inv_stations = {
    'land': 0,
    'marine': 1
}


platforms = {
    '0': '0',
    '1': 'coastal', # shallow water station (fixed to sea / lake floor)
    '2': 'ship',
    '3': 'other',
    '4': 'moored_buoy',
    '5': 'drifting_buoy',
    '6': 'other',
    '7': '0',
    '8': '0',
    '9': 'other',
    '32': 'other',
    '33': 'ship',
    '34': 'other',
    '35': 'other',
    '36': 'other',
    '37': 'other',
    '38': 'coastal',
    '39': 'other',
    '40': 'other',
    '41': 'other',
    '42': 'other',
    '43': 'coastal',
    '44': 'other',
    '45': 'other',
    '46': 'other'
}

inv_platforms = {}

for key, value in platforms.items():
    inv_platforms[value] = inv_platforms.get(value,[])
    inv_platforms[value].append( key )

outfile = open('create_header_children.sql', 'w')
# generate child tables for header
for year in range( 1800, 2019, 1):
    tmin = '{}-01-01 00:00:0.0+0'.format(year)
    tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)
    for station, values in stations.items():
        for report in values['report']:
            for platform in values['platform']:
                table_name = 'cdm_v1.header_{}_{}_{}_{}'.format( year, station, report, platform )
                table_short = 'header_{}_{}_{}_{}'.format( year, station, report, platform )
                pt_constraint = ','.join( inv_platforms[platform]   )
                station_constraint = inv_stations[station]
                print('')
                print( 'create table {}() inherits ( cdm_v1.header_table );'.format( table_name ), file = outfile )
                print( 'alter table {} add constraint {}_pk primary key (report_id);'.format( table_name, table_short ), file = outfile )
                print( 'alter table {} add constraint {}_report check( report_type = {});'.format( table_name, table_short, report), file = outfile)
                print( 'alter table {} add constraint {}_platform check( platform_type in ({}) );'.format(table_name, table_short, pt_constraint ), file = outfile)
                print( 'alter table {} add constraint {}_station check( station_type = {} );'.format(table_name, table_short, station_constraint) , file = outfile)
                print( "alter table {} add constraint {}_date check(report_timestamp >= TIMESTAMP WITH TIME ZONE '{}' and report_timestamp < TIMESTAMP WITH TIME ZONE '{}' );".format(table_name, table_short, tmin, tmax ) , file = outfile)
outfile.close()

outfile = open('create_header_triggers.sql', 'w')
# now insert trigger for header
print( '' )
print( 'CREATE OR REPLACE FUNCTION header_insert_trigger()', file = outfile)
print( '    RETURNS TRIGGER AS $$', file = outfile)
print( '    BEGIN', file = outfile)
for year in range( 1800, 2019, 1):
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
            if( counter2 == 0):
                print('                IF NEW.report_type = {} THEN'.format(report) , file = outfile)
            else:
                print('                ELSIF NEW.report_type = {} THEN'.format(report), file = outfile)
            counter3 = 0
            for platform in values['platform']:
                table_name = 'cdm_v1.header_{}_{}_{}_{}'.format( year, station, report, platform )
                table_short = 'header_{}_{}_{}_{}'.format( year, station, report, platform )
                pt_constraint = ','.join( inv_platforms[platform]   )
                if( counter3 == 0):
                    print('                    IF NEW.platform_type in ({}) THEN'.format(pt_constraint), file = outfile)
                    print('                        INSERT INTO {} VALUES(NEW.*);'.format(table_name), file = outfile)
                else:
                    print('                    ELSIF NEW.platform_type in ({}) THEN'.format(pt_constraint), file = outfile)
                    print('                        INSERT INTO {} VALUES(NEW.*);'.format(table_name), file = outfile)
                counter3 += 1
            print('                    ELSE', file = outfile)
            print("                        RAISE EXCEPTION 'Invalid platform type in header_insert_trigger';", file = outfile)
            print('                    END IF;', file = outfile)
            counter2 += 1
        print('                ELSE', file = outfile)
        print("                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';", file = outfile)
        print('                END IF;', file = outfile)
        counter += 1
    print('            ELSE', file = outfile)
    print("                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';", file = outfile)
    print('            END IF;', file = outfile)
    print('        END IF;', file = outfile)

print( '    END', file = outfile)
print( '$$', file = outfile)
print( 'LANGUAGE plpgsql;', file = outfile)
outfile.close()

# now repeat for observation tables

outfile = open('create_observation_children.sql', 'w')
# generate child tables for header
for year in range( 1800, 2019, 1):
    tmin = '{}-01-01 00:00:0.0+0'.format(year)
    tmax = '{}-01-01 00:00:0.0+0'.format(year + 1)
    for station, values in stations.items():
        for report in values['report']:
            for platform in values['platform']:
                table_name = 'cdm_v1.observations_{}_{}_{}_{}'.format( year, station, report, platform )
                table_short = 'observations_{}_{}_{}_{}'.format( year, station, report, platform )
                pt_constraint = ','.join( inv_platforms[platform]   )
                station_constraint = inv_stations[station]
                print('')
                print( 'create table {}() inherits ( cdm_v1.observations_table );'.format( table_name ), file = outfile )
                print( 'alter table {} add constraint {}_pk primary key (observation_id);'.format( table_name, table_short ), file = outfile )
                print( 'alter table {} add constraint {}_report check( report_type = {});'.format( table_name, table_short, report), file = outfile)
                print( 'alter table {} add constraint {}_platform check( platform_type in ({}) );'.format(table_name, table_short, pt_constraint ), file = outfile)
                print( 'alter table {} add constraint {}_station check( station_type = {} );'.format(table_name, table_short, station_constraint) , file = outfile)
                print( "alter table {} add constraint {}_date check(date_time >= TIMESTAMP WITH TIME ZONE '{}' and date_time < TIMESTAMP WITH TIME ZONE '{}' );".format(table_name, table_short, tmin, tmax ) , file = outfile)
outfile.close()


outfile = open('create_observations_triggers.sql', 'w')
# now insert trigger for observations
print( '' )
print( 'CREATE OR REPLACE FUNCTION observations_insert_trigger()', file = outfile)
print( '    RETURNS TRIGGER AS $$', file = outfile)
print( '    BEGIN', file = outfile)
for year in range( 1800, 2019, 1):
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
            if( counter2 == 0):
                print('                IF NEW.report_type = {} THEN'.format(report) , file = outfile)
            else:
                print('                ELSIF NEW.report_type = {} THEN'.format(report), file = outfile)
            counter3 = 0
            for platform in values['platform']:
                table_name = 'cdm_v1.observations_{}_{}_{}_{}'.format( year, station, report, platform )
                table_short = 'observations_{}_{}_{}_{}'.format( year, station, report, platform )
                pt_constraint = ','.join( inv_platforms[platform]   )
                if( counter3 == 0):
                    print('                    IF NEW.platform_type in ({}) THEN'.format(pt_constraint), file = outfile)
                    print('                        INSERT INTO {} VALUES(NEW.*);'.format(table_name), file = outfile)
                else:
                    print('                    ELSIF NEW.platform_type in ({}) THEN'.format(pt_constraint), file = outfile)
                    print('                        INSERT INTO {} VALUES(NEW.*);'.format(table_name), file = outfile)
                counter3 += 1
            print('                    ELSE', file = outfile)
            print("                        RAISE EXCEPTION 'Invalid platform type in observations_insert_trigger';", file = outfile)
            print('                    END IF;', file = outfile)
            counter2 += 1
        print('                ELSE', file = outfile)
        print("                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';", file = outfile)
        print('                END IF;', file = outfile)
        counter += 1
    print('            ELSE', file = outfile)
    print("                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';", file = outfile)
    print('            END IF;', file = outfile)
    print('        END IF;', file = outfile)

print( '    END', file = outfile)
print( '$$', file = outfile)
print( 'LANGUAGE plpgsql;', file = outfile)
outfile.close()

