pipeline {
    agent none

    stages {
        stage('Echo') {
            agent {
                docker { image 'maven:3.8.6' }
            }
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
