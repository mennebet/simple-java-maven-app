pipeline {
    agent any

    environment {
        IMAGE_NAME = "my-custom-image:latest"
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    echo "Building Docker image..."
                    sh "docker build -t ${IMAGE_NAME} ."
                }
            }
        }

        stage('Verify Tools in Image') {
            steps {
                script {
                    echo "Verifying tool versions in the Docker image..."
                    sh """
                        docker run --rm ${IMAGE_NAME} bash -c '
                            echo "Java version:" && java -version
                            echo "Python version:" && python3 --version
                            echo "Node.js version:" && node --version
                        '
                    """
                }
            }
        }
    }
}
