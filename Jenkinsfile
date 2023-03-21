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
                ansible -i hosts -m ping web -vvv
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