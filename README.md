# glamod_database

Scripts to perform initial build of postgre database

## Templating

All scripts need to be modified before running - to include the schema.

This does the replacement:

```
SCHEMA=full_r1
perl -p -i -w -e 's/__INSERT_SCHEMA__/'$SCHEMA'/g;' ....file list....
```
