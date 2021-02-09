// pipeline {
//     agent {
//         docker {
//             image 'node:6-alpine' 
//             args '-p 3000:3000' 
//         }
//     }
//     stages {
//         stage('Build') { 
//             steps {
//                 sh 'npm install' 
//             }
//         }
//     }
//     stages {
//         stage('Deploy') { 
//             steps {
//                 sh 'npm install' 
//             }
//         }
//     }
// }


// CI/CD Pipeline for a hello-world REST API service
// Poll SCM: H/01 * * * *


pipeline {
    agent any
     environment {
        //once you sign up for Docker hub, use that user_id here
        registry = "dennisdavid/hello-world-app"
        //- update your credentials ID after creating credentials for connecting to Docker Hub
        registryCredential = 'docker_hub_login'
        dockerImage = ''
    }

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'Github-key', url: 'https://github.com/daviddennis02/hello-world-app']]])
            }
        }
        // Build Docker Image
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Upload Image to DockerHub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', registryCredential) {
                        dockerImage.push()
                }
            }
        }
    }
}
}