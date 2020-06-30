CREATE TRIGGER observations_insert_trigger
BEFORE INSERT ON __INSERT_SCHEMA__.observations_table
FOR EACH ROW EXECUTE PROCEDURE observations_insert_trigger();
