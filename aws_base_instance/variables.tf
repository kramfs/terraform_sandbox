variable "vpc_cidr_block" {
  description = "The top-level CIDR block for the VPC."
  default     = "10.1.0.0/16"
}

variable "cidr_blocks" {
  description = "The CIDR blocks to create the instance."
  default     = ["10.1.1.0/24", "10.1.2.0/24"]
}

variable "region" {
  description = "Region to provision the resource i.e. ap-southeast-1. Enter to accept default.."
  #default = "ap-southeast-1"
}

variable "instancetype" {
  description = "Instance type to use i.e. t2.micro. Enter to accept default.."
  default = "t2.micro"
}

variable "namespace" {
  description = "Give it a project namespace name i.e. test-deployment. Enter to accept default.."
}

variable "public_key_path" {
  description = "Path to public key for ssh access"
  default     = "~/.ssh/id_rsa.pub"
}

