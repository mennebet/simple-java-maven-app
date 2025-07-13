pipeline {
    agent any
    stages {
        stage('Check Maven') {
            steps {
                sh 'which mvn && mvn -v'
            }
        }
    }
}
