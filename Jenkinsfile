pipeline {
    agent {
        docker {
            image 'maven:3.9.9-eclipse-temurin-21'
            args '-v $HOME/.m2:/root/.m2'
        }
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
}
