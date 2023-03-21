pipeline {
    agent any
    // triggers {
    //     pollSCM '* * * * *'
    // }
    stages {
        stage('Building ') {
            steps {
                echo "Building.."
                sh '''
                 uname -a
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