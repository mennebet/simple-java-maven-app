pipeline {
    agent any

    stages {
        stage('Build with Kaniko') {
            steps {
                container('kaniko') {
                    sh '''
                    /kaniko/executor \
                      --context `pwd` \
                      --dockerfile `pwd`/Dockerfile \
                      --destination=myregistry/myimage:latest \
                      --insecure \
                      --skip-tls-verify
                    '''
                }
            }
        }
    }
}
