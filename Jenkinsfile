pipeline {

    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/martwebber/jenkins-ci.git']]])
            }
        }
    
        stage('Build') {
            steps {
                echo 'building...'
            }
        }

        stage('Docker hub login') {
            steps {
                echo 'docker login'
            }
        }
    
        stage('Push Image') {
            steps {
                echo 'push image...'
            }
        }
    }
} 
