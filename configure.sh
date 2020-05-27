#!/bin/bash


#### Script de preparacao do ambiente para rodar o AWS cli via Ansible 
### Feito por Ciro Bessa


### Instala dependencias

echo "==================
 SESSAO Dependencias
====================="
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get python -y
sudo apt-get python3 -y
sudo apt-get python-pip -y
sudo apt-get python-pip3  -y
sudo apt-get install sl curl -y
sudo apt-get install apt-transport-https -y
sudo apt install net-tools -y
sudo apt install ca-certificates gnupg-agent software-properties-common -y



echo "==================
 INSTALA O AWS CLI
====================="
sudo apt-get install awscli -y


#### DEPOIS DE CRIAR AS CREDENCIAIS de Usuário programatico DA AWS 
echo "===================================
 Entrar com as chaves de acesso da AWS CLI - Utilizar ZONE us-east-1
====================================="
aws configure

#### OU CONFIGURAR AS SEGUINTES VARIAVEIS DE AMBIENTE COM AS CRENDENCIAIS AWS
#export AWS_ACCESS_KEY_ID='DESATIVADO'
#export AWS_SECRET_ACCESS_KEY='DESATIVADO'



echo "==================
 INSTALA O RedHat Ansible
====================="

sudo apt update
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

