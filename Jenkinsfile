pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/SivaAcademy2025/docker-java-app.git',
                    credentialsId: 'github-pat' // Your GitHub PAT credential ID
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

        // Uncomment this stage to push the image to Docker Hub
        /*
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials-id') {
                        docker.image("java-app:latest").push()
                    }
                }
            }
        }
        */
    }
}
