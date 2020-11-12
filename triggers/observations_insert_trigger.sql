\connect c3s311a
CREATE TRIGGER observations_insert_trigger
BEFORE INSERT ON __INSERT_SCHEMA__.observations_table
FOR EACH ROW EXECUTE PROCEDURE __INSERT_SCHEMA__.observations_insert_trigger();
