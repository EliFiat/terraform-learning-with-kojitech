
## this is meant to set constraint on terraform  version
terraform {
    required_version = ">= 1.1.0" 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" # optional but recommended in production
    }
  }
}

## provider block (Aauthentication and Authorization...)
# 1st approach ( hard coding)
# provider "aws" {
#   region     = "us-east-1"
#   access_key = "my-access-key"
#   secret_key = "my-secret-key"
# }

## Second approach ( not reusable )
# provider "aws" {}
# $ export AWS_ACCESS_KEY_ID="anaccesskey"
# $ export AWS_SECRET_ACCESS_KEY="asecretkey"
# $ export AWS_REGION="us-west-2"
# $ terraform plan

provider "aws" {
  region = "us-east-1"
  profile = "default"
}

## Ressource block

resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

## data source ( to pull down existing resources)




## Creating ec2
         #local_name   #resource_name
resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id  
  instance_type = var.instance_type

  tags = {
    Name = "ec2_instance"
  }
}

# instance_id or private ip or public ip

## outputs


# bash git-command.sh

