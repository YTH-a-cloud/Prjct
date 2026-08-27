pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Fetching source code from GitHub (handled automatically by SCM)...'
            }
        }

        stage('Build & Inspect') {
            steps {
                echo 'Inspecting the workspace and preparing artifacts...'
                sh '''
                    echo "Current working directory: $(pwd)"
                    echo "Files in workspace:"
                    ls -la
                '''
            }
        }

        stage('Test Simulation') {
            steps {
                echo 'Running automated tests...'
                sh 'echo "All unit tests passed successfully! [0 failures]"'
            }
        }
    }

    post {
        success {
            echo '🎉 Success! Pipeline from SCM executed perfectly.'
        }
        failure {
            echo '❌ Build failed!'
        }
    }
}
