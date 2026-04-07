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
    }
}
