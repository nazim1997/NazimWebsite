pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
              sh 'ls -al'
              sh 'id'
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