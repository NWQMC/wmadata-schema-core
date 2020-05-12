#!/usr/bin/env bash

for file in $WORKSPACE/wmadata/dumps/*.gz; do gzip -d $file; done;

for file in $WORKSPACE/wmadata/dumps/*.pgdump
do
basefile=$(basename $file)
tablename="${basefile%.*}"
sed -i 's/public.'$tablename'/'$WMADATA_SCHEMA_NAME'.'$tablename'/g' $file
psql -U $WMADATA_SCHEMA_OWNER_USERNAME -f $file postgresql://${NWIS_DATABASE_ADDRESS}:5432/${NWIS_DATABASE_NAME}
done

