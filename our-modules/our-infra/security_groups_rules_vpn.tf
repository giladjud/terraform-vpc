module "vpn_security_group_rule1" {
  source               = "./../../modules/security/security_group_sg_rule"
  sg_rule_from_port    = "-1"
  sg_rule_to_port      = "-1"
  sg_rule_protocol     = "-1"
  sg_rule_source_sg_id = module.vpn_security_group.sg_id_out
  sg_id                = module.vpn_security_group.sg_id_out
  sg_rule_description  = "Open all VPN"
}

module "vpn_security_group_rule2" {
  source              = "./../../modules/security/security_group_ip_rule"
  sg_rule_from_port   = "22"
  sg_rule_to_port     = "22"
  sg_rule_protocol    = "TCP"
  sg_rule_cidr_blocks = ["0.0.0.0/0"]
  sg_id               = module.vpn_security_group.sg_id_out
  sg_rule_description = "Open SSH from anywhere"
}

module "vpn_security_group_rule3" {
  source              = "./../../modules/security/security_group_ip_rule"
  sg_rule_from_port   = "943"
  sg_rule_to_port     = "943"
  sg_rule_protocol    = "TCP"
  sg_rule_cidr_blocks = ["0.0.0.0/0"]
  sg_id               = module.vpn_security_group.sg_id_out
  sg_rule_description = "Open 943 from anywhere"
}

module "vpn_security_group_rule4" {
  source               = "./../../modules/security/security_group_ip_rule"
  sg_rule_from_port    = "-1"
  sg_rule_to_port      = "-1"
  sg_rule_protocol     = "ICMP"
  sg_rule_cidr_blocks = ["0.0.0.0/0"]
  sg_id                = module.vpn_security_group.sg_id_out
  sg_rule_description  = "Open ICMP from anywhere"
}

module "vpn_security_group_rule5" {
  source               = "./../../modules/security/security_group_sg_rule"
  sg_rule_from_port    = "443"
  sg_rule_to_port      = "443"
  sg_rule_protocol     = "TCP"
  sg_rule_source_sg_id = module.vpn_security_group.sg_id_out
  sg_id                = module.vpn_security_group.sg_id_out
  sg_rule_description = "Open HTTPS from within the VPN"
}

module "vpn_security_group_rule6" {
  source               = "./../../modules/security/security_group_sg_rule"
  sg_rule_from_port    = "80"
  sg_rule_to_port      = "80"
  sg_rule_protocol     = "TCP"
  sg_rule_source_sg_id = module.vpn_security_group.sg_id_out
  sg_id                = module.vpn_security_group.sg_id_out
  sg_rule_description = "Open HTTP from within the VPN"
}
