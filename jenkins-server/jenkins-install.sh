#!/bin/bash

# Update system and install dependencies
sudo yum update -y

# Install Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade -y
sudo yum install java-17-amazon-corretto -y
sudo yum install -y jenkins
sudo systemctl enable jenkins


# Reload systemd and start Jenkins
sudo systemctl daemon-reload
sudo systemctl start jenkins

# Install Git
sudo yum install -y git

# Install AWS CLI
sudo yum install aws-cli -y 

# Install Terraform
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform

# Install kubectl
sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.23.6/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mkdir -p $HOME/bin
sudo cp ./kubectl $HOME/bin/kubectl
echo 'export PATH=$PATH:$HOME/bin' | sudo tee -a ~/.bashrc
source ~/.bashrc
