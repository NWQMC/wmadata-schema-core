pipeline {
  agent {
    node {
      label 'team:nhgf'
    }
  }
  stages {
    stage('Set Build Description') {
      steps {
        script {
          currentBuild.description = "Deploy to ${env.DEPLOY_STAGE}"
        }
      }
    }
    stage('Clean Workspace') {
      steps {
        cleanWs()
      }
    }
    stage('Git Clone') {
      steps {
        checkout([
            $class: 'GitSCM', 
            branches: [[name: '*/master']], 
            doGenerateSubmoduleConfigurations: false, 
            extensions: [], 
            submoduleCfg: [], 
            userRemoteConfigs: [[credentialsId: 'CIDA-Jenkins-GitHub', 
            url: 'https://github.com/NWQMC/wmadata-schema-core.git']]])
      }
    }
    stage('Download liquibase jar and pgdumps') {
      steps {
        sh '''mkdir $WORKSPACE/wmadata
        mkdir $WORKSPACE/wmadata/dumps
        artifactoryurl="https://artifactory.wma.chs.usgs.gov/artifactory/wma-binaries/lfs/api/nwc2wmadataprep"
        /usr/local/bin/aws s3 cp s3://owi-common-resources/resources/InstallFiles/liquibase/liquibase-$LIQUIBASE_VERSION.tar.gz $WORKSPACE/wmadata/liquibase.tar.gz
        /usr/bin/tar xzf $WORKSPACE/wmadata/liquibase.tar.gz --overwrite -C $WORKSPACE/wmadata
        /usr/local/bin/aws s3 cp s3://owi-common-resources/resources/InstallFiles/postgres/$JDBC_JAR $WORKSPACE/wmadata/lib/$JDBC_JAR
        curl $artifactoryurl/gagesii.pgdump.gz > $WORKSPACE/wmadata/dumps/gagesii.pgdump.gz
        curl $artifactoryurl/huc08.pgdump.gz > $WORKSPACE/wmadata/dumps/huc08.pgdump.gz
        curl $artifactoryurl/huc12.pgdump.gz > $WORKSPACE/wmadata/dumps/huc12.pgdump.gz
        curl $artifactoryurl/huc12all.pgdump.gz > $WORKSPACE/wmadata/dumps/huc12all.pgdump.gz
        curl $artifactoryurl/huc12agg.pgdump.gz > $WORKSPACE/wmadata/dumps/huc12agg.pgdump.gz
        curl $artifactoryurl/nhdarea.pgdump.gz > $WORKSPACE/wmadata/dumps/nhdarea.pgdump.gz
        curl $artifactoryurl/nhdflowline_network.pgdump.gz > $WORKSPACE/wmadata/dumps/nhdflowline_network.pgdump.gz
        curl $artifactoryurl/nhdflowline_nonnetwork.pgdump.gz > $WORKSPACE/wmadata/dumps/nhdflowline_nonnetwork.pgdump.gz
        curl $artifactoryurl/nhdwaterbody.pgdump.gz > $WORKSPACE/wmadata/dumps/nhdwaterbody.pgdump.gz
        curl $artifactoryurl/catchmentsp.pgdump.gz > $WORKSPACE/wmadata/dumps/catchmentsp.pgdump.gz
        ls $WORKSPACE/wmadata/dumps
        '''
      }
    }
    stage('Run liquibase') {
      steps {
        script {
          def dbHost = "not-defined"
          if ("${DEPLOY_STAGE}" == "development") {
            env.ROLE_ARN = "arn:aws:iam::807615458658:role/dev-owi-assume"
            dbHost = ".dev-nwis.usgs.gov"
            sh(script: '/usr/local/bin/aws sts assume-role --role-arn $ROLE_ARN --role-session-name tmp_session --duration-seconds 3600 > aws_session.json')
            def sessionJson = readJSON file: "aws_session.json"
            env.AWS_ACCESS_KEY_ID = sessionJson.Credentials.AccessKeyId
            env.AWS_SECRET_ACCESS_KEY = sessionJson.Credentials.SecretAccessKey
            env.AWS_SESSION_TOKEN = sessionJson.Credentials.SessionToken
          } else if ("${DEPLOY_STAGE}" == "production-unrestricted") {
            dbHost = ".nwis.usgs.gov"
          }
          def secretsString = sh(script: '/usr/local/bin/aws ssm get-parameter --name "/aws/reference/secretsmanager/$WMADATA_SECRET_NAME" --query "Parameter.Value" --with-decryption --output text --region "us-west-2"', returnStdout: true).trim()
          def secretsJson =  readJSON text: secretsString
          env.POSTGRES_PASSWORD = sh(script: '/usr/local/bin/aws ssm get-parameter --name "/aws/reference/secretsmanager//nldi-db-$DEPLOY_STAGE/rds-admin-password" --query "Parameter.Value" --with-decryption --output text --region "us-west-2"', returnStdout: true).trim()
          env.WMADATA_DATABASE_ADDRESS = "nldi-db-${DEPLOY_STAGE}" + dbHost
          env.WMADATA_DATABASE_NAME = secretsJson.DATABASE_NAME
          env.WMADATA_DB_OWNER_USERNAME = secretsJson.DB_OWNER_USERNAME
          env.WMADATA_DB_OWNER_PASSWORD = secretsJson.DB_OWNER_PASSWORD
          env.WMADATA_SCHEMA_NAME = secretsJson.WMADATA_SCHEMA_NAME
          env.WMADATA_SCHEMA_OWNER_USERNAME = secretsJson.WMADATA_SCHEMA_OWNER_USERNAME
          env.WMADATA_SCHEMA_OWNER_PASSWORD = secretsJson.WMADATA_SCHEMA_OWNER_PASSWORD
          env.WMADATA_DB_READ_ONLY_USERNAME = secretsJson.WMADATA_DB_READ_ONLY_USERNAME
          env.WMADATA_DB_READ_ONLY_PASSWORD = secretsJson.WMADATA_DB_READ_ONLY_PASSWORD
          
          sh '''
            export LIQUIBASE_HOME=$WORKSPACE/wmadata
            export LIQUIBASE_WORKSPACE_WMADATA=$WORKSPACE/liquibase/changeLogs

            chmod +x $WORKSPACE/liquibase/scripts/z1_postgres_liquibase.sh
            chmod +x $WORKSPACE/liquibase/scripts/z2_wmadata_liquibase.sh
            $WORKSPACE/liquibase/scripts/z1_postgres_liquibase.sh
            $WORKSPACE/liquibase/scripts/z2_wmadata_liquibase.sh
            '''
        }
      }
    }

    stage('Ingest Data') {
      agent {
          docker{ image 'mdillon/postgis'
           args '-v $WORKSPACE:/data'
           reuseNode true
           }
      }
      steps{

        script {

          sh '''
            export PGPASSWORD=$WMADATA_SCHEMA_OWNER_PASSWORD
            for file in /data/wmadata/dumps/*.gz; do gzip -d $file; done;

            psql -U $WMADATA_SCHEMA_OWNER_USERNAME -c \
            "TRUNCATE TABLE wmadata.huc12;" \
            postgresql://$WMADATA_DATABASE_ADDRESS:5432/$WMADATA_DATABASE_NAME

            psql -U $WMADATA_SCHEMA_OWNER_USERNAME -c \
            "ALTER TABLE wmadata.huc12 ALTER COLUMN the_geom type geometry;" \
            postgresql://$WMADATA_DATABASE_ADDRESS:5432/$WMADATA_DATABASE_NAME

            psql -U $WMADATA_SCHEMA_OWNER_USERNAME -c \
            "TRUNCATE TABLE wmadata.huc12all;" \
            postgresql://$WMADATA_DATABASE_ADDRESS:5432/$WMADATA_DATABASE_NAME

            psql -U $WMADATA_SCHEMA_OWNER_USERNAME -c \
            "ALTER TABLE wmadata.huc12all ALTER COLUMN the_geom type geometry;" \
            postgresql://$WMADATA_DATABASE_ADDRESS:5432/$WMADATA_DATABASE_NAME

            for file in $WORKSPACE/wmadata/dumps/*.pgdump
            do
            basefile=$(basename $file)
            tablename="${basefile%.*}"
            sed -i 's/public.'$tablename'/'$WMADATA_SCHEMA_NAME'.'$tablename'/g' $file
            psql -U $WMADATA_SCHEMA_OWNER_USERNAME -f $file postgresql://$WMADATA_DATABASE_ADDRESS:5432/$WMADATA_DATABASE_NAME
            done

            psql -U $WMADATA_SCHEMA_OWNER_USERNAME -c \
            "ALTER TABLE wmadata.huc12 ALTER COLUMN the_geom type geometry(MultiPolygon, 4269) using ST_Multi(the_geom);" \
            postgresql://$WMADATA_DATABASE_ADDRESS:5432/$WMADATA_DATABASE_NAME

            psql -U $WMADATA_SCHEMA_OWNER_USERNAME -c \
            "ALTER TABLE wmadata.huc12all ALTER COLUMN the_geom type geometry(MultiPolygon, 4269) using ST_Multi(the_geom);" \
            postgresql://$WMADATA_DATABASE_ADDRESS:5432/$WMADATA_DATABASE_NAME

            psql -U $WMADATA_SCHEMA_OWNER_USERNAME -c \
            "ALTER TABLE wmadata.huc08 ALTER COLUMN the_geom TYPE geometry(MULTIPOLYGON, 4269) USING ST_Transform(ST_SetSRID(the_geom,900913),4269);" \
            postgresql://$WMADATA_DATABASE_ADDRESS:5432/$WMADATA_DATABASE_NAME

            psql -U $WMADATA_SCHEMA_OWNER_USERNAME -c \
            "ALTER TABLE wmadata.huc12agg ALTER COLUMN the_geom TYPE geometry(MULTIPOLYGON, 4269) USING ST_Transform(ST_SetSRID(the_geom,900913),4269)" \
            postgresql://$WMADATA_DATABASE_ADDRESS:5432/$WMADATA_DATABASE_NAME

            psql -U $WMADATA_SCHEMA_OWNER_USERNAME -c \
            "ALTER TABLE wmadata.gagesii ALTER COLUMN the_geom TYPE geometry(MULTIPOINT, 4269) USING ST_Transform(ST_SetSRID(the_geom,900913),4269);" \
            postgresql://$WMADATA_DATABASE_ADDRESS:5432/$WMADATA_DATABASE_NAME

            '''
        }
      }
    }
  }
}
