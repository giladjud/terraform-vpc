module "internal_security_group_rule1" {
  source               = "./../../modules/security/security_group_sg_rule"
  sg_rule_from_port    = "-1"
  sg_rule_to_port      = "-1"
  sg_rule_protocol     = "-1"
  sg_rule_source_sg_id = module.internal_security_group.sg_id_out
  sg_id                = module.internal_security_group.sg_id_out
  sg_rule_description  = "Open all interally"
}

module "internal_security_group_rule2" {
  source               = "./../../modules/security/security_group_sg_rule"
  sg_rule_from_port    = "-1"
  sg_rule_to_port      = "-1"
  sg_rule_protocol     = "-1"
  sg_rule_source_sg_id = module.vpn_security_group.sg_id_out
  sg_id                = module.internal_security_group.sg_id_out
  sg_rule_description  = "Open all from vpn"
}

