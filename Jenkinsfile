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
                sh 'mvn -B -DskipTests clean package' 
            }
        }
    }
}