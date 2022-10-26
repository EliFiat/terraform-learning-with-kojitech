
# ## this is meant to set constraint on terraform  version
# terraform {
#     required_version = ">= 1.1.0" 
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.0" # optional but recommended in production
#     }
#   }
# }

# ## provider block (Aauthentication and Authorization...)
# # 1st approach ( hard coding)
# # provider "aws" {
# #   region     = "us-east-1"
# #   access_key = "my-access-key"
# #   secret_key = "my-secret-key"
# # }

# ## Second approach ( not reusable )
# # provider "aws" {}
# # $ export AWS_ACCESS_KEY_ID="anaccesskey"
# # $ export AWS_SECRET_ACCESS_KEY="asecretkey"
# # $ export AWS_REGION="us-west-2"
# # $ terraform plan

# provider "aws" {
#   region = "us-east-1"
#   profile = "default"
# }

# ## Ressource block

# resource "aws_vpc" "main" {
#   cidr_block       = var.cidr_block
#   instance_tenancy = "default"

#   tags = {
#     Name = "main"
#   }
# }

# ## data source ( to pull down existing resources)

# data "aws_availability_zones" "available" {
#   state = "available"
# }

# ## DATA SOURCE
# resource "aws_subnet" "public_subnet1" {
#   vpc_id     = local.main_vpc_id
#   cidr_block = var.subnet_cidr[0]
#   availability_zone = data.aws_availability_zones.available.names[0]
# }

# resource "aws_subnet" "public_subnet2" {
#   vpc_id     = local.main_vpc_id
#   cidr_block = var.subnet_cidr[1]
#   availability_zone = data.aws_availability_zones.available.names[1]

# }

# resource "aws_subnet" "private_subnet1" {
#   vpc_id     = local.main_vpc_id
#   cidr_block = var.subnet_cidr[2]
#   availability_zone = data.aws_availability_zones.available.names[0]

# }

# resource "aws_subnet" "private_subnet2" {
#   vpc_id     = local.main_vpc_id
#   cidr_block = var.subnet_cidr[3]
#   availability_zone = data.aws_availability_zones.available.names[1]

# }

# resource "aws_subnet" "private_subnet3" {
#   vpc_id     = local.main_vpc_id
#   cidr_block = var.subnet_cidr[4]
#   availability_zone = data.aws_availability_zones.available.names[0]

# }

# resource "aws_subnet" "private_subnet4" {
#   vpc_id     = local.main_vpc_id
#   cidr_block = var.subnet_cidr[5]
#   availability_zone = data.aws_availability_zones.available.names[1]

# }



# ## Creating ec2
#          #local_name   #resource_name
# resource "aws_instance" "ec2_instance" {
#   ami           = data.aws_ami.ami.id  
#   instance_type = var.instance_type

#   tags = {
#     Name = "ec2_instance"
#   }
# }

# # instance_id or private ip or public ip

# ## outputs


# # bash git-command.sh


# # create variable for subnet cidr_block
# # use data source to pull down available ami
# # put vpc in locals

# data "aws_ami" "ami" {
#   most_recent      = true
#   owners           = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["amzn2-ami-hvm*"]
#   }
# }


