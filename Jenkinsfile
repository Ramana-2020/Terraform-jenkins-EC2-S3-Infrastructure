pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                script {
                    git url: 'https://github.com/Ramana-2020/Terraform-jenkins-EC2-S3-Infrastructure.git'
                    sh 'cd Terraform-jenkins-EC2-S3-Infrastructure && terraform init -reconfigure'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    git url: 'https://github.com/Ramana-2020/Terraform-jenkins-EC2-S3-Infrastructure.git'
                    sh 'cd Terraform-jenkins-EC2-S3-Infrastructure && terraform apply -auto-approve'
                }
            }
        }

        stage('Terraform Destroy') {
            steps {
                script {
                    git url: 'https://github.com/Ramana-2020/Terraform-jenkins-EC2-S3-Infrastructure.git'
                    sh 'cd Terraform-jenkins-EC2-S3-Infrastructure && terraform destroy -auto-approve'
                }
            }
        }
    }
}
