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
        stage('Building ') {
            steps {
                echo "Building.."
                sh '''
                 apk add sshpass
                 ansible --version
                

                '''
            }
        }
        stage('Execute') {
            steps {
                echo "Execute.."
                sh '''
                cd froggenius
                ansible-playbook -i ./hosts main.yaml --extra-vars "domain=test.froggenius.com project=test http_port=8001 https_port=9001" -vvv
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