CREATE TRIGGER observations_insert_trigger
BEFORE INSERT ON full_r1.observations_table
FOR EACH ROW EXECUTE PROCEDURE observations_insert_trigger();
