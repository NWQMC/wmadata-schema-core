pipeline {
  agent {
    node {
      label 'project:any'
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
    stage('Download liquibase jar') {
      steps {
        sh '''mkdir $WORKSPACE/wmadata
        if [ ! -f nldi/liquibase ]; then
          /usr/local/bin/aws s3 cp s3://owi-common-resources/resources/InstallFiles/liquibase/liquibase-$LIQUIBASE_VERSION.tar.gz $WORKSPACE/wmadata/liquibase.tar.gz
          /usr/bin/tar xzf $WORKSPACE/wmadata/liquibase.tar.gz --overwrite -C $WORKSPACE/wmadata
          /usr/local/bin/aws s3 cp s3://owi-common-resources/resources/InstallFiles/postgres/$JDBC_JAR $WORKSPACE/wmadata/lib/$JDBC_JAR
        fi
        '''
      }
    }
    
    stage('Run liquibase') {
      steps {
        script {
          def secretsString = sh(script: '/usr/local/bin/aws ssm get-parameter --name "/aws/reference/secretsmanager/WQP-EXTERNAL-$DEPLOY_STAGE" --query "Parameter.Value" --with-decryption --output text --region "us-west-2"', returnStdout: true).trim()
          def secretsJson =  readJSON text: secretsString
          env.NWIS_DATABASE_ADDRESS = secretsJson.DATABASE_ADDRESS
          env.NWIS_DATABASE_NAME = secretsJson.DATABASE_NAME
          env.NWIS_DB_OWNER_USERNAME = secretsJson.DB_OWNER_USERNAME
          env.NWIS_DB_OWNER_PASSWORD = secretsJson.DB_OWNER_PASSWORD
          env.WMADATA_SCHEMA_NAME = secretsJson.WMADATA_SCHEMA_NAME
          env.WMADATA_SCHEMA_OWNER_USERNAME = secretsJson.WMADATA_SCHEMA_OWNER_USERNAME
          env.WMADATA_SCHEMA_OWNER_PASSWORD = secretsJson.WMADATA_SCHEMA_OWNER_PASSWORD
          env.WMADATA_DB_READ_ONLY_USERNAME = secretsJson.WMADATA_DB_READ_ONLY_USERNAME
          env.WMADATA_DB_READ_ONLY_PASSWORD = secretsJson.WMADATA_DB_READ_ONLY_PASSWORD
          env.POSTGRES_PASSWORD = secretsJson.POSTGRES_PASSWORD
          
          sh '''
           
            export LIQUIBASE_HOME=$WORKSPACE/wmadata
            export LIQUIBASE_WORKSPACE_NWIS=$WORKSPACE/liquibase/changeLogs

            chmod +x $WORKSPACE/liquibase/scripts/z1_postgres_liquibase.sh
            chmod +x $WORKSPACE/liquibase/scripts/z2_wmadata_liquibase.sh
            $WORKSPACE/liquibase/scripts/z1_postgres_liquibase.sh
            $WORKSPACE/liquibase/scripts/z2_wmadata_liquibase.sh
            '''
        }
      }
    }
  }
}