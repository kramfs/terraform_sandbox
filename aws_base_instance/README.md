# aws_base_instance
This template can be used to repeatedly create the following environment:
1. Create the VPC environment in AWS
   - Networking CIDR
   - Internet Gateway
   - Route Table
   - Subnet
   - Security Group 
2. Create an instance within the VPC and the associated information
   - A publicly available image (AMI)
   - Instance Type
   - SSH Key pair
   - Using a startup template to install package(s) on boot

### Requirement:
A locally installed terraform binary. Refer to https://www.terraform.io/downloads.html on how to download and install Terraform

### USAGE:

- git clone git@github.com:kramfs/terraform_sandbox.git
- cd aws_base_instance
- terraform init
- terraform plan
