pipeline {
    agent any
    tools {
        maven 'maven-3.9.14'
    }
    stages {
        stage('git clone') {
            steps {
                echo 'Building...'
                git branch: 'master', url: 'https://github.com/mesho9536/demo-app.git'
            }
        }
        stage('build') {
            steps {
                echo 'Building...'
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t demo-app:latest .'
            }
        }
       stage('Push to DockerHub') {
            steps {
                sh '''
                docker tag demo-app $DOCKER_USER/demo-app
                docker push $DOCKER_USER/demo-app
                '''
            }
        }
    }
}
