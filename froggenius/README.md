Automated deploy script
Technologies: Ansible, Docker, Shell Scritps


Scritp use: 
ansible-playbook -i ./hosts main.yaml --extra-vars "domain=test.froggenius.com project=test http_port=8001 https_port=9001" -vv


--------------------------------------------------------------------------------

EXAMPLE
 - ansible-playbook main.yaml --ask-pass --extra-vars "domain=DEMO.FrogGenius.com project=PAT http_port=8080 https_port=8443"
 - ansible-playbook -i ./hosts -l provision main.yaml --ask-pass --extra-vars "domain=DEMO.FrogGenius.com project=PAT http_port=8080 https_port=8443"
 - ansible-playbook -i ./hosts main.yaml --extra-vars "domain=DEMO.FrogGenius.com project=PAT http_port=8080 https_port=8443"
 - ansible-playbook -i ./hosts -l provision main.yaml --extra-vars "domain=DEMO.FrogGenius.com project=PAT http_port=8080 https_port=8443"


TODO
 - fix second run bug
    - create db
    - mount /raid
    
---
(OLD)
example (Porject name = PAT)
 - ansible-playbook build-server.yaml --ask-pass --extra-vars "domain=DEMO.FrogGenius.com"
 - ansible-playbook build-docker.yaml --ask-pass --extra-vars "project=PAT http_port=8080 https_port=8443"
 - ansible-playbook setup-container.yaml --ask-pass --extra-vars "project=PAT"
 - bash build-api.sh 128.199.165.124 PAT
 


Advance custom host
ansible-playbook -i ./hosts -l provision --ask-pass build-docker.yaml --extra-vars "project=PAT http_port=8080 https_port=8443"
ansible-playbook -i ./hosts -l provision --ask-pass build-docker.yaml -e project=PAT -e http_port=8080 -e https_port=8443
ansible-playbook -i ./hosts -l provision build-docker.yaml --ask-pass --extra-vars '{"project":"PAT", "http_port":"8080", "https_port":"8443" }'