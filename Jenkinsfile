pipeline {
    agent none
    stages {
        stage('Build Tests') {
            steps {
                echo "Build"
            }
        }
        stage('Unit Tests') {
            parallel {
                stage('Junit Test') {
                    steps {
                        echo "Junit Test"
                    }
                }
                stage('Jest Test') {
                    steps {
                        echo "Jest Test"
                    }
                }
                stage('ArchUnit Test') {
                    steps {
                        echo "ArchUnit Test"
                    }
                }
                stage('JDepend Test') {
                    steps {
                        echo "JDepend Test"
                    }
                }
            }
        }
        stage('Integration') {
            parallel {
                stage('Junit Integration Test') {
                    steps {
                        echo "Junit Test"
                    }
                }
                stage('UI Functional Test') {
                    steps {
                        echo "UI Performance Metrics Test"
                    }
                }
            }
        }
        stage('Sonar Analysis') {
            steps {
                echo "Sonar Analysis"
                echo "Sonar Gateway Results"
            }
        }
        stage('Publish Artifacts') {
            steps {
                echo "Push to Registry"
            }
        }
        stage('Deploy to UAT') {
            steps {
                echo "Provision UAT"
                echo "Deploy to UAT"
            }
        }
        stage('UAT Tests') {
            parallel {
                stage('End to End Test Client/Server') {
                    steps {
                        echo "End to End Test"
                    }
                }
                stage('API Test') {
                    steps {
                        echo "UI Performance Metrics Test"
                    }
                }
                stage('Performance Test') {
                    steps {
                        echo "Performance Test"
                    }
                }
            }
        }
        stage('Deploy to DEV') {
            steps {
                echo "Provision DEV"
                echo "Deploy to DEV"
            }
        }
        stage('Deploy to PROD') {
            steps {
                echo "Provision PROD"
                echo "Deploy to PROD"
            }
        }
    }
}