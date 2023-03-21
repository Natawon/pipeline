pipeline {
    agent { 
        node {
            label 'ansible'
            }
      }
    // triggers {
    //     pollSCM '* * * * *'
    // }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                 uname -a
                 apk add bash sshpass
                 ansible --version
                

                '''
            }
        }
        stage('Run') {
            steps {
                echo "Run.."
                sh '''
                cd froggenius
                ansible-playbook -i hosts main.yaml --extra-vars "domain=test.froggenius.com project=test http_port=8001 https_port=9001" -vv

                   '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                echo "doing delivery stuff.."
                '''
            }
        }
    }
}