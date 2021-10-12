###################### AWS sg variables ##########################
### the variables in this file are passed in at environment level ####

# subnet variables
variable vpc_id {}

variable sg_description {}
variable sg_role {}
variable sg_name {}
variable sg_environment {}
variable sg_enabled {
  default = "1"
}
