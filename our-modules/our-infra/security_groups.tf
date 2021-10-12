module "internal_security_group" {
  source         = "./../../modules/security/security_group"
  sg_name	 = "${var.environment}-internal"
  sg_role        = "internal"
  sg_description = "Allow internal access"
  vpc_id         = module.vpc.vpc_id_out
  sg_environment = var.environment
}

module "vpn_security_group" {
  source         = "./../../modules/security/security_group"
  sg_name	 = "${var.environment}-vpn-access"
  sg_role        = "vpn-access"
  sg_description = "Allow vpn access"
  vpc_id         = module.vpc.vpc_id_out
  sg_environment = var.environment
}

