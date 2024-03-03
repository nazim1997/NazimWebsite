pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
              echo "build stage"
              sh 'npm install'
            }
        }
        stage('Packaging') {
            steps {
              echo "Creating a package"
              sh 'npm run build'
              sh 'tar -czf dist.tar.gz dist'
            }
        }
        stage('Deploy') {
            steps {
              echo "Deploying stage"
              sh 'scp dist.tar.gz centos@54.37.66.135:/var/www/html'
              sh  'ssh centos@54.37.66.135 "tar -xf /var/www/html/dist.tar.gz --strip-components=1"'
            }
        }
    }
}