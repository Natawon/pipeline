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
                bash build.sh
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