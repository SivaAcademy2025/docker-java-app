pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                // Checkout your GitHub repo main branch
                git branch: 'main', 
                    url: 'https://github.com/SivaAcademy2025/docker-java-app.git',
                    credentialsId: 'github-pat' // Replace with your GitHub PAT credential ID in Jenkins (if private repo)
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image with tag java-app:latest
                    docker.build("java-app:latest")
                }
            }
        }

        stage('Run Docker Container (Optional)') {
            steps {
                script {
                    // Run the container interactively then remove it after stopping
                    docker.image('java-app:latest').run('--rm -p 8080:8080')
                }
            }
        }

        /*
        stage('Push Docker Image') {
            steps {
                script {
                    // Push Docker image to Docker Hub (uncomment and add credentials to enable)
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials-id') {
                        docker.image("java-app:latest").push()
                    }
                }
            }
        }
        */
    }
}
