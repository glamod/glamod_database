\connect c3s311a
CREATE TRIGGER observations_insert_trigger
BEFORE INSERT ON cdm_v1.observations_table
FOR EACH ROW EXECUTE PROCEDURE cdm_v1.observations_insert_trigger();
