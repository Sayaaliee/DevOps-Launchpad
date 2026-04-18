pipeline {
    agent any

    stages {
        stage('Deploy with Docker Compose') {
            steps {
                sh '''
                Docker-compose down || true
                Docker-compose up -d --build
                '''
            }
        }
    }
}
