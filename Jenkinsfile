pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                script {
                    git url: 'https://github.com/PrasanthKumar0/Jenkins-Terraform-EC2-S3-Infrastructure.git'
                    sh 'cd Jenkins-Terraform-EC2-S3-Infrastructure && terraform init -reconfigure'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    git url: 'https://github.com/PrasanthKumar0/Jenkins-Terraform-EC2-S3-Infrastructure.git'
                    sh 'cd Jenkins-Terraform-EC2-S3-Infrastructure && terraform apply -auto-approve'
                }
            }
        }

        stage('Terraform Destroy') {
            steps {
                script {
                    git url: 'https://github.com/PrasanthKumar0/Jenkins-Terraform-EC2-S3-Infrastructure.git'
                    sh 'cd Jenkins-Terraform-EC2-S3-Infrastructure && terraform destroy -auto-approve'
                }
            }
        }
    }
}
