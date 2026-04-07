pipeline {
    agent any

    tools {
        maven 'maven-3.9.14'
    }

    environment {
        DOCKER_IMAGE = 'demo-app'
        DOCKER_USER = 'rahulkumar9536'
    }

    stages {

        stage('git clone') {
            steps {
                echo 'Cloning repository...'
                git branch: 'master', url: 'https://github.com/mesho9536/demo-app.git'
            }
        }

        stage('build') {
            steps {
                echo 'Building project...'
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Check Docker') {
            steps {
                sh 'whoami'
                sh 'docker version'
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t ${DOCKER_USER}/demo-app:latest .'
            }
        }
        stage('Push Docker Image') {
            steps {
                echo 'Pushing Docker image to registry...'
                withCredentials([usernamePassword(credentialsId: 'docker-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                    sh 'docker push ${DOCKER_USER}/demo-app:latest'
                }
            }
        }

    }
}

