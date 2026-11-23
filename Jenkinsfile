
pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Source code checked out from GitHub'
                sh 'ls -la'
            }
        }

        stage('Terraform Init') {
            steps {
                echo 'Terraform Init'
                sh 'terrafom init'
            }
        }

        stage('Terraform Plan') {
            steps {
                echo 'Running Terraform Plan...'
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                echo 'Terraform Creating AWS resource..Apply'
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
    stage('Upload State to S3') {
            steps {
                script {
                    echo 'sh aws s3 cp terraform.tfstate s3://your-bucket-name'
                }
            }
        }

    post {
        success {
            echo 'Success!'
            
        }

        failure {
            echo 'Failure.'
        }

        always {
            echo 'CI Pipeline execution completed. Cleanup pending!'
        }
    }
}
