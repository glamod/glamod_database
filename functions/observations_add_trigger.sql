\connect c3s311a
CREATE TRIGGER observations_insert_trigger
BEFORE INSERT ON observations_table
FOR EACH ROW EXECUTE PROCEDURE observations_insert_trigger();
