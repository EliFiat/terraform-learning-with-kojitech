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