#counterapp-in-ec2

Aplicação contador de visita em Instancia EC2
 - Para rodar o app é necessário haver uma conta AWS com perfil programatico. E faz uso de credenciais de acesso AWS para o AWS CLI
 

1)    Script "./configure.sh" Prepara instalação das dependencias:

 -   AWS CLI
 -   ANSIBLE

2)    Script "./Cria_EC2_instance_sobe_APP.sh" Roda Ansible, para criar instancia EC2 e "user_data" para baixar e rodar APP:

 -   Sobe instancia Ubuntu 18.04 na AZ AWS us-east-1
 -   Com script "user_data" baixa o aplicativo, suas dependencias (como node.js, npm e yarn) ao final roda o aplicativo contador.
 -   Arquivo do Ansible com as configurações da instancia EC2 é o:
 https://github.com/cirobessa/counterapp-in-ec2/blob/master/ec2-ansible/roles/create/tasks/provisioning.yml
 
 
 Grato,
 Ciro Bessa
