variable "environment" {}

variable "vpc_cidr_b_class_block" {}

variable "aws_region" {} 

variable "subnet_a_az" {}

variable "subnet_b_az" {}

variable "subnet_c_az" {}

variable "env_pub_key" {}

variable "vpn_size" { default = "t2.micro" }
