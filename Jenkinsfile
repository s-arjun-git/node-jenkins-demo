pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/s-arjun-git/node-jenkins-demo.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t jenkins-node-app .'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'npm test'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the Docker container...'
                sh 'docker stop node-app || true && docker rm node-app || true'
                sh 'docker run -d --name node-app -p 3000:3000 jenkins-node-app'
            }
        }
    }
}
