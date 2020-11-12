CREATE OR REPLACE FUNCTION __INSERT_SCHEMA__.validate_header_table()
RETURNS trigger AS 
$BODY$
BEGIN
IF NOT new.application_area <@ (select array_agg(application_area) from __INSERT_SCHEMA__.application_area) THEN
  RAISE EXCEPTION ' Invalid entry for header_table.application_area, match not found in application_area.application_area ';
END IF;
IF NOT new.observing_programme <@ (select array_agg(observing_programme) from __INSERT_SCHEMA__.observing_programme) THEN
  RAISE EXCEPTION ' Invalid entry for header_table.observing_programme, match not found in observing_programme.observing_programme ';
END IF;
IF NOT new.events_at_station <@ (select array_agg(event) from __INSERT_SCHEMA__.events_at_station) THEN
  RAISE EXCEPTION ' Invalid entry for header_table.events_at_station, match not found in events_at_station.event ';
END IF;
IF NOT new.processing_codes <@ (select array_agg(code) from __INSERT_SCHEMA__.report_processing_codes) THEN
  RAISE EXCEPTION ' Invalid entry for header_table.processing_codes, match not found in report_processing_codes.code ';
END IF;
RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql VOLATILE
COST 100;


