#### variables ( type of variables )

# creating var

variable "ami_id" { 
    type = string
    description = "ami_id"
    default = "ami-09d3b3274b6c5d4aa"
}

variable "cidr_block" { 
    type = string
    description = "cidr_block"
    default = "10.0.0.0/16"
}

variable "instance_type" { 
    type = string
    description = "instance_type"
    default = "t2.micro"
}

