## TYPES (ROOT/CHILD)
# CLASSES OF MODULES( PUBLIC / PRIVATE MODULES)

# PRIVATE MODULES IS FOR SPECIFIC COMPANIES

## public vpc module
## modules are dynamic

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "main"
  cidr = "10.0.0.0/16"

  azs             = data.aws_availability_zones.available.names   # data source
  private_subnets = var.private_subnets  # list variable
  public_subnets  = var.public_subnets # list variable

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

######################################################

terraform {
    required_version = ">= 1.1.0" 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" # optional but recommended in production
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "default"
}

data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_ami" "ami" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

## Creating ec2
         #local_name   #resource_name
resource "aws_instance" "ec2_instance" {
  ami           = data.aws_ami.ami.id  
  instance_type = var.instance_type

  tags = {
    Name = "ec2_instance"
  }
}



## output the  vpc_id that was created




