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

### Requirements:
1. A locally installed Terraform binary. Refer to https://www.terraform.io/downloads.html on how to download and install Terraform. Tip: I use [tfenv](https://github.com/tfutils/tfenv) to install and manage my Terraform versions.
2. Access to an AWS Account. You can create your 12-months free account here - https://aws.amazon.com/free/
3. Install and configure the AWS [command line interface (CLI)](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)

### USAGE:

1. git clone git@github.com:kramfs/terraform_sandbox.git
2. cd aws_base_instance
3. Export the AWS credential so it is available to your environment when you interact with AWS API.
   - Grab and export the AWS credentials (in ~/.aws/credentials or ~/.aws/config) 
 
```# Grab and Export AWS credentials (in ~/.aws/credentials or ~/.aws/config)
PROFILE_ID=default
export AWS_ACCESS_KEY_ID=$(aws configure get $PROFILE_ID.aws_access_key_id)
export AWS_SECRET_ACCESS_KEY=$(aws configure get $PROFILE_ID.aws_secret_access_key)
export AWS_DEFAULT_REGION=$(aws configure get $PROFILE_ID.region)
```

# launch sequence
4. terraform init
5. terraform plan
6. terraform apply

# clean up
7 terraform destroy
