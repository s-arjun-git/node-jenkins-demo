pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/s-arjun-git/node-jenkins-demo.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("your-app:${GIT_COMMIT}")
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    // replace with your test framework, if any
                    dockerImage.inside {
                        sh 'echo "Run tests here"'
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    // Simple deployment: run the container (customize as needed)
                    sh 'docker run -d --rm --name your-app -p 8080:8080 your-app:${GIT_COMMIT}'
                }
            }
        }
    }
}
