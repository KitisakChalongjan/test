pipeline {
    agent any

    stages {
        stage('Build Golang API Service Image') {
            steps {
                echo 'Building...'
                docker.build 'test-image'
            }
        }
    }
}
