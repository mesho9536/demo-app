pipeline {
    agent any

    tools {
        maven 'maven-3.9.14'
    }

    environment {
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

    }
}
