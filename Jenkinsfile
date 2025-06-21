pipeline {
    agent {
        kubernetes {
            yaml """
apiVersion: v1
kind: Pod
spec:
  containers:
  - name: maven
    image: maven:3.8.6
    command:
    - cat
    tty: true
"""
        }
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
