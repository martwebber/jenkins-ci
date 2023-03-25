pipeline {
    agent any
        environment{
        DOCKERHUB_CREDENTIALS=credentials('DOCKERHUB_CREDENTIALS')
    }


    // stages {
    //     stage('checkout') {
    //         steps {
    //             checkout scmGit(branches: [[name: '*/develop']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/martwebber/jenkins-ci.git']])
    //         }
    //     }

    //                 //SonarQube analysis
    //                stage('SonarQube analysis') {
    //                    steps {
    //                        script {
    //                            try {
    //                                def scannerHome = tool 'sonar-scanner';
    //                                withSonarQubeEnv('Sonarqube') {
    //                                    sh "${tool("sonar-scanner")}/bin/sonar-scanner"
    //                                }
    //                            } catch (Error|Exception e){
    //                                echo "failed but we continue"
    //                            }
    //                        }
    //                    }
    //                }
        
stage('Build') {
            steps {
                sh 'docker build -t martwebber/flask-app-test .'
            }
        }
        stage('Push Image') {
            steps {
                script{
                    withCredentials([string(credentialsId: 'DOCKERHUB_PASSWORD', variable: 'DOCKERHUB_PASSWORD')]) {
                    sh 'docker login -u martwebber -p ${DOCKERHUB_PASSWORD}'
}
                sh 'docker push martwebber/flask-app-test:latest'

                }
            }
        }
        
    }
}
