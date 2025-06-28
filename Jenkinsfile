pipeline {
    agent any
    stages {
        stage('Echo') {
            steps {
                sh 'echo hello world'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn -B clean package -DskipTests'
            }
        }
    }

}
