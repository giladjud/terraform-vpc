###################### AWS sg ingress rule variables #################
### the variables in this file are passed in at environment level ####

# subnet variables
variable sg_id {}

variable sg_rule_description {}
variable sg_rule_from_port {}
variable sg_rule_to_port {}
variable sg_rule_protocol {}

variable sg_rule_source_sg_id {}

variable sg_rule_enabled {
  default = "1"
}
