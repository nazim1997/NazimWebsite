def checkRemoteFileExists(String remoteServer, String remoteFile) {
    def command = "ssh ${remoteServer} '[ -d ${remoteFile} ] && echo \"Deployment successful\" || echo \"Deployment failed\"'"
    return sh(script: command, returnStatus: true)
}

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
        stage('Test') {
          steps {
                script {
                    def result = checkRemoteFileExists(REMOTE_SERVER, DEPLOY_DIR)
                    if (result == 0) {
                        echo "File was successfully copied to the remote server."
                    } else {
                        error "File copy failed. File does not exist on the remote server."
                    }
                }
            }
        }
    }
}