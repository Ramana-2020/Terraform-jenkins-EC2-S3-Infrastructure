pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        TF_region = 'ap-south-1'
        TF_bucket = 'venkataramana2020'
        TF_VAR_key_name = 'ramana'
        TF_VAR_instance_type = 't2.micro'
        GITHUB_REPO_URL = 'https://github.com/Ramana-2020/Terraform-jenkins-EC2-S3-Infrastructure.git'
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    git branch: 'main', url: GITHUB_REPO_URL
                }
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init -input=false'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    echo 'Running Terraform Plan...'
                    sh "terraform plan \
                        -var 'region=${TF_region}' \
                        -var 's3_bucket=${TF_bucket}' \
                        -var 'key_name=${TF_VAR_key_name}' \
                        -var 'instance_type=${TF_VAR_instance_type}'"
                    echo 'Terraform Plan completed.'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    sh "terraform apply -auto-approve \
                        -var 'region=${TF_region}' \
                        -var 's3_bucket=${TF_bucket}' \
                        -var 'key_name=${TF_VAR_key_name}' \
                        -var 'instance_type=${TF_VAR_instance_type}'"
                }
            }
        }
    }
}
