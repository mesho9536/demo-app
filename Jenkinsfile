pipeline {
    agent any
    stages {
        stage('git clone') {
            steps {
                echo 'Building...'
                git branch: 'master', url: 'https://github.com/mesho9536/demo-app.git'
            }
        }
    }
}
