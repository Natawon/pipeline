pipeline {
    agent { 
        node {
            label 'ansible'
            }
      }
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                 uname -a
                 apk add bash
                 ansible --version
                

                '''
            }
        }
        stage('Run') {
            steps {
                echo "Testing.."
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