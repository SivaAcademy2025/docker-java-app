pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/SivaAcademy2025/docker-java-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("java-app:latest")
                }
            }
        }

        stage('Run Docker Container (Optional)') {
            steps {
                script {
                    docker.image('java-app:latest').run('--rm')
                }
            }
        }
    }
}
