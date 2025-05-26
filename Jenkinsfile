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
                    // Build the Docker image and tag it as java-app
                    docker.build("java-app")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Run the container and map internal port (optional since Java app is console-based)
                    docker.image('java-app').run()
                }
            }
        }
    }
}
