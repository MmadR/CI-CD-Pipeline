pipeline {
    agent {
        docker {
            image 'gradle:jdk11'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'gradle clean build'
            }
        }
    }
}