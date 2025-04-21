##Overview
Terraform for AWS EC2 instance, configured for simple flask application deployment.  Terraform used to provision EC2 and shell for installing dependenices and cloning github repo. Not for production use. 

##File Structure

flask_app_github/
│
├── app/
│   ├── app.py
│   ├── requirements.txt
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── ec2_user_data.sh
│
└── README.md

##preqrequisites 
-Install AWS CLI
-Create IAM user with necessary premissions
-Create access key 
-Store access key ID and key in /.ssh (execute aws configure)

##terraform.tfvars
Create terraform.tfvars and store subnet_id, vpci_id, and my_ip (local ip for SSH). 

##run
terraform init
terraform validate
terraform apply

open instnace pubclic ip:5000 in web browser

