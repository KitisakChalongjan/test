pipeline {
    agent any

    stages {
        stage('Build Golang API Service Image') {
            steps {
                echo 'Building...'
                sh 'docker build -t test-image .'
            }
        }
    }
}
