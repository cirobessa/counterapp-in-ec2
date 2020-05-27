#!/bin/bash


### Criar Amazon EC2 instance usando o Ansible
## Sobe aplicativo para servidor criado


### Roda Ansible Playbook
ansible-playbook -i "ec2-ansible/localhost" ec2-ansible/main.yml


#### Responde com IP da instancia EC2 rodando
ip_ec2=`tail -1 ec2-ansible/localhost`
echo "Instancia EC2 pode ser acessada no IP $ip_ec2" 



