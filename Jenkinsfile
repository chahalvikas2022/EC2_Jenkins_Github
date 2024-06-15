pipeline {
    agent any

    environment {
        // Define your GitHub repository URL
        REPO_URL = 'https://github.com/chahalvikas2022/EC2_Jenkins_Github.git'
        
        // Define your GitHub credentials ID (this should match the ID of your Jenkins credential)
        //GITHUB_CREDENTIALS_ID = 'your-github-credentials-id'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from GitHub
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], 
                          doGenerateSubmoduleConfigurations: false, 
                          extensions: [], 
                          submoduleCfg: [], 
                          userRemoteConfigs: [[url: "${REPO_URL}"]]
                ])
            }
        }
//        stage('Build') {
//           steps {
//                // Example build step
//                echo 'Building...'
//                sh 'make build' // Replace with your actual build command
//            }
//        }
    }

    post {
        always {
            // Clean up workspace after the build
            cleanWs()
        }
    }
}
