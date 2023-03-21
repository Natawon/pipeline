pipeline {

    agent {
        
        label 'ansible'

    }

    stages {

        stage ('echo'){
            steps {
                

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