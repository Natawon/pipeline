pipeline {

    agent {
        
        label 'ansible'

    }

    stages {

        stage ('test run'){
            steps {
                sh '''
                 cd froggenius
                

                '''

                    ansiblePlaybook( 

                        playbook: './main.yaml',
                        inventory: './hosts', 
                        credentialsId: 'sample-ssh-key',
                        colorized: true

                    ) 
                
            }
        }
        
    }    

}