pipeline {
    agent any

    stages {
        stage('Pull Code') {
            steps {
                echo 'Pulling the latest code from GitHub...'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building the hotel website Docker image...'
                // This builds your image and names it hotel-website
                sh 'docker build -t hotel-website .'
            }
        }

        stage('Deploy Container') {
            steps {
                echo 'Deploying the website live...'
                
                // This stops and removes any old container so it doesn't clash
                sh 'docker stop hotel-app || true'
                sh 'docker rm hotel-app || true'
                
                // This starts the brand new container on port 8888
                sh 'docker run -d -p 8888:80 --name hotel-app hotel-website'
            }
        }
    }
}
