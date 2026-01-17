pipeline {
    agent any

    environment {
        // Docker Hub credentials stored in Jenkins
        DOCKERHUB_USER = 'madhusudhan143'
        DOCKERHUB_PASS = credentials('dockerhub-credentials-id') 
        AWS_REGION     = 'us-east-1'
        CLUSTER_NAME   = 'madhu-cluster'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Madhusudhanhub/frontend.git'
            }
        }

        stage('Build & Push Docker Image') {
            steps {
                script {
                    sh './build.sh'
                }
            }
        }

        stage('Deploy to EKS') {
            steps {
                script {
                    sh './deploy.sh'
                }
            }
        }
    }

    post {
        success {
            echo '✅ Deployment successful!'
        }
        failure {
            echo '❌ Pipeline failed. Check logs.'
        }
    }
}

