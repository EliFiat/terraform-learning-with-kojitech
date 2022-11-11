### output values

output "instance_private_ip" {
  description = "instance_private_ip"
  value = aws_instance.ec2_instance.private_ip
}

output "instance_public_ip" {
  description = "instance_public_ip"
  value = aws_instance.ec2_instance.public_ip
}

output "instance_id" {
  description = "instance_id"
  value = aws_instance.ec2_instance.id
}

output "private_dns" {
  description = "private_dns"
  value = aws_instance.ec2_instance.private_dns
}

output "vpc_id" {
    description = "vpc id"
   value = module.vpc.vpc_id  ##since we are using module we have to call the module the source  + resource name and the logical name.to get logical name go to main.tf of the root module.
}

output "public_subnets_id" {
   value = module.vpc.public_subnets
}

output "private_subnets_id" {
   value = module.vpc.private_subnets
}

