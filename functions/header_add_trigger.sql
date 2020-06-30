CREATE TRIGGER header_insert_trigger
BEFORE INSERT ON full_r1.header_table
FOR EACH ROW EXECUTE PROCEDURE header_insert_trigger();
