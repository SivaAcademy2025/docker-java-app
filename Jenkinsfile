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
                    def appImage = docker.image("java-app")
                    appImage.run('-p 8080:8080') // Add port mapping if needed
                }
            }
        }
    }
}
