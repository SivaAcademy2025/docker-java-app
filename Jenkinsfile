pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/SivaAcademy2025/docker-java-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def appImage = docker.build("java-app")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('java-app').run('-p 8080:8080')
                }
            }
        }
    }
}
