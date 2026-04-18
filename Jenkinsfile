pipeline {
    agent any

    stages {
        stage('Deploy with Docker Compose') {
            steps {
                sh '''
                docker-compose down || true
                docker-compose up -d --build
                '''
            }
        }
    }
}
