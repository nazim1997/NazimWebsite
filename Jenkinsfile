pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
              sh 'npm install'
            }
        }
        stage('Test') {
            steps {
              echo "Test stage"
            }
        }
        stage('Deploy') {
            steps {
              echo "Deploy stage"
            }
        }
    }
}