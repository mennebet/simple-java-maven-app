pipeline {
    agent any
    tools {
        maven 'Maven 3.8.6' // Use the name defined in Global Tool Configuration
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
    }
}
