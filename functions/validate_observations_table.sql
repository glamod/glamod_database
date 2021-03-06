CREATE OR REPLACE FUNCTION __INSERT_SCHEMA__.validate_observations_table()
RETURNS trigger AS 
$BODY$
DECLARE
  table_size INT;
BEGIN
IF NOT new.processing_code <@ (select array_agg(code) from __INSERT_SCHEMA__.processing_code) THEN
  RAISE EXCEPTION ' Invalid entry for observations_table.processing_code, match not found in processing_code.code ';
END IF;

IF new.code_table IS NOT NULL THEN
  SELECT count(code_table) as nrows into table_size from __INSERT_SCHEMA__.observation_code_table where code_table = new.code_table;
  if not found or table_size = 0 then
    RAISE EXCEPTION ' Invalid entry (%) for observations_table.code_table, match not found in observation_code_table.code_table ', new.code_table;
  end if;
END IF;

RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql VOLATILE
COST 100;


