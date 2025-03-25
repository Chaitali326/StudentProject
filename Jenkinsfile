pipeline {
    agent any
    environment {
        IMAGE_NAME = 'student_project'
        DOCKER_HUB_USERNAME = 'your_dockerhub_username'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_HUB_USERNAME/$IMAGE_NAME .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials']) {
                    sh 'docker push $DOCKER_HUB_USERNAME/$IMAGE_NAME'
                }
            }
        }
    }
}
