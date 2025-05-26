pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                // Checkout your repo from GitHub main branch
                git branch: 'main', url: 'https://github.com/SivaAcademy2025/docker-java-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image and tag it as java-app:latest
                    docker.build("java-app:latest")
                }
            }
        }

        stage('Run Docker Container (Optional)') {
            steps {
                script {
                    // Run the Docker container temporarily to check if it works fine
                    docker.image('java-app:latest').run('--rm')
                }
            }
        }
        
        // Uncomment this stage if you want to push to Docker Hub, and configure credentials in Jenkins
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
