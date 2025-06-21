pipeline {
    agent any
    stages {
        stage('Echo') { 
            steps {
                sh 'echo hello world'
            }
        }
        stage('Build in Maven image') {
            agent {
                docker {
                    image 'maven:3.8.6'
                    args '-v /root/.m2:/root/.m2' // optional volume mount
                }
            }
            steps {
                sh 'mvn -B clean package -DskipTests'
            }
        }
    }
}