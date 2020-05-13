#!/bin/bash
# The set -e tells bash to exit immediately if a simple command fails.
# The set -o pipefail tells bash to set pipeline's return status to status of the last (rightmost) command.
# Both should be used in scripts meant to be called by Jenkins or another job runner.
set -e
set -o pipefail

# nwis schema scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE_WMADATA}/wmadata/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://${WMADATA_DATABASE_ADDRESS}:5432/${WMADATA_DATABASE_NAME} \
	--username=${WMADATA_SCHEMA_OWNER_USERNAME} \
	--password=${WMADATA_SCHEMA_OWNER_PASSWORD} \
	--logLevel=debug \
	--liquibaseCatalogName=${WMADATA_SCHEMA_NAME} \
	--liquibaseSchemaName=${WMADATA_SCHEMA_NAME} \
	update \
	-DWMADATA_SCHEMA_OWNER_USERNAME=${WMADATA_SCHEMA_OWNER_USERNAME} \
	-DWMADATA_SCHEMA_NAME=${WMADATA_SCHEMA_NAME} \
	-DWMADATA_DB_READ_ONLY_USERNAME=${WMADATA_DB_READ_ONLY_USERNAME}