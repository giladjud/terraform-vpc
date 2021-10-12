variable "environment" { description = "Environment resources belong to" }
variable "aws_region" {  }
variable "vpc_cidr_b_class_block" {}
variable "env_pub_key" {}
variable "subnet_a_az" { default = "a" }
variable "subnet_b_az" { default = "b" }
variable "subnet_c_az" { default = "c" }

