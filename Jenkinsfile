pipeline {
    agent any
    environment {
        REMOTE_SERVER='centos@54.37.66.135'
        DEPLOY_DIR='/var/www/html'
        LOCAL_FILE='dist'
    }
    stages {
        stage('Build') {
            steps {
              echo "build stage"
              sh 'npm install'
            }
        }
        stage('Deploy') {
            steps {
              echo "Deploying stage"
              sh 'npm run build'
              echo "Copying dist file to remote server"
              sh "scp -r ${LOCAL_FILE}/* ${REMOTE_SERVER}:${DEPLOY_DIR}"
            }
        }
    }
}