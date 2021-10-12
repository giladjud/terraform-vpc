###################### AWS private routing table variables ##########################
########### the variables in this file are passed in at environment level ###########

# routing table variables
variable vpc_id         {}
variable cidr_block     { default = "0.0.0.0/0" }
variable nat_gateway_id {}
variable rt_name        {}

# tag variable
variable environment { description = "Environment resources belong to" }
