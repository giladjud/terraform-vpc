###################### AWS subnet variables ##########################
### the variables in this file are passed in at environment level ####

# subnet variables
variable vpc_id {}

variable cidr_block {}
variable map_public_ip_on_launch {}
variable availability_zone {}
variable purpose {}
variable function {}
variable aws_region {}
variable subnet_name {}

# tag variable
variable environment {
  description = "Environment resources belong to"
}
