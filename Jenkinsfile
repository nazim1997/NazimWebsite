pipeline {
    agent any
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
              sh "scripts/deploy.sh"
            }
        }
    }
}