pipeline {
    agent any

    stages {
        stage('Echo') {
            steps {
                sh 'echo hello world'
            }
        }

        stage('Build') {
            agent {
                docker { image 'maven:3.8.6' }
            }
            steps {
                sh 'mvn -B clean package -DskipTests'
            }
        }
    }
}
