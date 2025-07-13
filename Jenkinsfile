pipeline {
    agent {
        docker {
            image 'maven:3.8.6'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
    }
}
