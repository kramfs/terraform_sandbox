terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    template = {
      source = "hashicorp/template"
      version = "~> 2.1.2"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}