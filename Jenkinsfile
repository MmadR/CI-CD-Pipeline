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
            when {
                not { branch pattern: "hotfix/\\d+", comparator: "REGEXP" }
                not { branch pattern: "feature/\\d+", comparator: "REGEXP" }
            }
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
            when {
                not { branch pattern: "hotfix/\\d+", comparator: "REGEXP" }
                not { branch pattern: "feature/\\d+", comparator: "REGEXP" }
            }
            steps {
                echo "Sonar Analysis"
                echo "Sonar Gateway Results"
            }
        }
        stage('Publish Artifacts') {
            when {
                not { branch pattern: "hotfix/\\d+", comparator: "REGEXP" }
                not { branch pattern: "feature/\\d+", comparator: "REGEXP" }
            }
            steps {
                echo "Push to Registry"
            }
        }
        stage('Deploy to UAT') {
            when {
                not { branch pattern: "hotfix/\\d+", comparator: "REGEXP" }
                not { branch pattern: "feature/\\d+", comparator: "REGEXP" }
            }
            steps {
                echo "Provision UAT"
                echo "Deploy to UAT"
            }
        }
        stage('UAT Tests') {
            when {
                not { branch pattern: "hotfix/\\d+", comparator: "REGEXP" }
                not { branch pattern: "feature/\\d+", comparator: "REGEXP" }
            }
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
            when {
                branch 'develop'
            }
            steps {
                echo "Provision DEV"
                echo "Deploy to DEV"
            }
        }
        stage('Deploy to QA') {
            when {
                anyOf {
                    branch 'master'
                    branch pattern: "release-\\d+", comparator: "REGEXP"
                }
            }
            steps {
                echo "Provision QA"
                echo "Deploy to QA"
            }
        }
        stage('Deploy to PROD') {
            when {
                branch 'master'
            }
            steps {
                echo "Provision PROD"
                echo "Deploy to PROD"
            }
        }
    }
}