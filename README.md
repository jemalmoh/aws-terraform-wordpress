<h1>Infra-as-code using Terraform </h1> 
 
 <h3>AWS FREE TRIAL friendly</h3>
 
 ***
A little intro about the parameters in the terraform files
```
$ terraform.tfvars file : Defined Change database entries ,regions and other variable 
$ user.tfvars file : Database password in
$ terraform.tfvars : AWS LINUX 2 is a default OS but you can use Ubuntu by changing IsUbuntu = true
$ user_data.tf is script for LINUX 2 and userdata_ubuntu.tpl is for Ubuntu
$ ami-id will be imported using data.aws_ami 
```

## Security Group
***
* EC2 instance deployed in a public subnet since our wordpress site will be puplic facing.
* RDS database deployed in a private subnet and only accessible by EC2 server
* EC2 security group allowed to access RDS database via private IP address
***

## Prerequisite
***

* aws cli should be installed and configured with proper access key and secret key
* Terraform should be installed in your local machine
* Configure AWS CLI with <code> aws configure </code> if you havent configured already

***

## Installation
***
A little intro about the installation. 
```
$ git clone https://github.com/jemalmoh/aws-terraform-wordpress.git
$ cd ../path/to/aws-terraform-wordpress
$ terraform init
$ Change database and aws setting in terraform.tfvars file
$ Generate private and public keys <ssh-keygen -f mykey-pair>
$ terraform plan -var-file="user.tfvars"
$ terraform apply -var-file="user.tfvars
```
Side information: To access the wordpress website in your local using private key ```ssh -i mykey-pair ec2-user@35.170.xxx.xxx``` to trace the log ```tail command```
To access the wordpress website in your browser use ```Public Ip address of WebServer``` from terraform last output.


## Clean up 
***
* terraform destroy -var-file="user.tfvars
***

## Technologies
***
A list of technologies used within the project:
* [Terraform](https://www.terraform.io/): Version v1.1.7
* [AWS EC2 Instance](https://aws.amazon.com/): 
* [AWS RDS](https://aws.amazon.com/):
***

