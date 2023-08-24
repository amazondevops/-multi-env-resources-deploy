pipeline {
    agent any
    
    parameters {
        choice(
            choices: 'dev\nprod',
            description: 'Select environment (dev or prod)',
            name: 'ENVIRONMENT'
        )
        choice(
            choices: 'plan\napply\ndestroy',
            description: 'Select Terraform command (plan, apply, destroy)',
            name: 'TERRAFORM_COMMAND'
        )
    }
    
    environment {
        WORKING_DIRECTORY = "${params.ENVIRONMENT == 'dev' ? 'environments/dev/' : 'environments/prod/'}"
    }
    
    stages {
        stage('Checkout code') {
            steps {
                git credentialsId: 'BB_CREDS', url: 'https://bitbucket.org/cloudzenix/multienvdeploy/src/master/'
            }
        }
        
        stage('Initiliazing the terraform') {
            steps {
                dir(WORKING_DIRECTORY) {
                    script {
                        sh 'terraform init'
                    }
                }
            }
        }
        
        stage('Plan Terraform') {
            when {
                expression { params.TERRAFORM_COMMAND == 'plan' }
            }
            steps {
                dir(WORKING_DIRECTORY) {
                    script {
                        sh 'terraform plan'
                    }
                }
            }
        }
        
        stage('Apply Terraform Changes') {
            when {
                expression { params.TERRAFORM_COMMAND == 'apply' }
            }
            steps {
                dir(WORKING_DIRECTORY) {
                    script {
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }
        
        stage('Destroy Resources') {
            when {
                expression { params.TERRAFORM_COMMAND == 'destroy' }
            }
            steps {
                dir(WORKING_DIRECTORY) {
                    script {
                        sh 'terraform destroy -auto-approve'
                    }
                }
            }
        }
    }
}
