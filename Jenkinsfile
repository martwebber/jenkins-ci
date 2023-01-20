pipeline {
    agent any
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/martwebber/jenkins-ci.git']]])
            }
        }
    
        stage('Build') {
            steps {
                echo 'docker build'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }

        stage('Push Image') {
            steps {
                echo 'Image puhed to docker hub'
            }
        }
    
        stage('Deploy to GKE') {
            steps {
                echo 'Deploying to GKE...'
            }
        }
    }
} 
