#! /bin/bash

scp -r /home/trainee/DevOps-Project/k8s_ansible/pre-prod trainee@192.168.56.2:/home/trainee/
#scp -r /home/trainee/DevOps-Project/k8s_ansible/prod trainee@192.168.56.2:/home/trainee/

ansible-playbook -i hosts dependancies_k8s.yml
