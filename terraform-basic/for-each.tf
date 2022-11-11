# 5 instances with windows ami, 3 ubuntu ami. with the concept of for_each
# lets achieve that

# ["ami-017cdd6dc706848b2", "ami-08c40ec9ead489470"]
# count support list
# for_each would map

# resource "aws_instance" "frontend" {
#     count = 
#   ami           = ["ami-017cdd6dc706848b2", "ami-08c40ec9ead489470"]
#   instance_type = "t3.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }

# locals {}

