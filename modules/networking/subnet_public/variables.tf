################## AWS public subnet variables ######################
### the variables in this file are passed in at environment level ###

# public subnet variables
variable vpc_id {}

variable cidr_block {}
variable availability_zone {}
variable route_table_id {}
variable function {}
variable aws_region {}
variable subnet_name {}

# tag variable
variable environment {
  description = "Environment resources belong to"
}
