#!/bin/bash
#!/bin/bash
# The set -e tells bash to exit immediately if a simple command fails.
# The set -o pipefail tells bash to set pipeline's return status to status of the last (rightmost) command.
# Both should be used in scripts meant to be called by Jenkins or another job runner.
set -e
set -o pipefail

# postgres to postgres db scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE_WMADATA}/postgres/postgres/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://${WMADATA_DATABASE_ADDRESS}:5432/postgres \
	--username=postgres \
	--password=${POSTGRES_PASSWORD} \
	--logLevel=debug \
	--liquibaseCatalogName=public \
	--liquibaseSchemaName=public \
	update \
	-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
	-DWMADATA_DATABASE_NAME=${WMADATA_DATABASE_NAME} \
	-DWMADATA_DB_OWNER_USERNAME=${WMADATA_DB_OWNER_USERNAME} \
	-DWMADATA_DB_OWNER_PASSWORD=${WMADATA_DB_OWNER_PASSWORD} \
	-DWMADATA_SCHEMA_NAME=${WMADATA_SCHEMA_NAME} \
	-DWMADATA_SCHEMA_OWNER_USERNAME=${WMADATA_SCHEMA_OWNER_USERNAME} \
	-DWMADATA_SCHEMA_OWNER_PASSWORD=${WMADATA_SCHEMA_OWNER_PASSWORD}

# postgres to nwis db scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE_WMADATA}/postgres/wmadata/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://${WMADATA_DATABASE_ADDRESS}:5432/${WMADATA_DATABASE_NAME} \
	--username=postgres \
	--password=${POSTGRES_PASSWORD} \
	--logLevel=debug \
	--liquibaseCatalogName=public \
	--liquibaseSchemaName=public \
	update \
	-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
	-DWMADATA_SCHEMA_OWNER_USERNAME=${WMADATA_SCHEMA_OWNER_USERNAME} \
	-DWMADATA_SCHEMA_NAME=${WMADATA_SCHEMA_NAME}
