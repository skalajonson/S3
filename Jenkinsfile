pipeline {
    agent any
    
    stages {
       stage('Run S3 bucket') {
            steps {
                sh '''
                cd S3/
                terraform init
                terraform validate
                terraform apply --auto-approve
                terraform apply --auto-approve
                '''
            }
        }
    }
}
