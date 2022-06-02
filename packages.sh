#!/usr/bin/env bash

apt-get -y install git curl wget unzip python3 python3-pip ansible

## Terraform
curl https://releases.hashicorp.com/terraform/1.1.9/terraform_1.1.9_linux_amd64.zip > terraform_1.1.9_linux_amd64.zip
unzip terraform_1.1.9_linux_amd64.zip -d /bin
rm -f terraform_1.1.9_linux_amd64.zip

## Packer
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
apt-add-repository -y "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
apt-get update
apt-get install -y packer

## AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install -i /usr/local/aws-cli -b /usr/local/bin
