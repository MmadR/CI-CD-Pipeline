pipeline {
    agent {
        docker {
            image 'gradle:dk11'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'gradle build'
            }
        }
    }
}