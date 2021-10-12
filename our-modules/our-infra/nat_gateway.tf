module "az_a_nat_gateway"{
  source    = "./../../modules/networking/nat_gateway"
  subnet_id = module.subnet_Public_a.pub_sub_id_out
  zone    = "${var.aws_region}a"
  environment = var.environment
}

module "az_b_nat_gateway"{
  source    = "./../../modules/networking/nat_gateway"
  subnet_id = module.subnet_Public_b.pub_sub_id_out
  zone    = "${var.aws_region}b"
  environment = var.environment
}

module "az_c_nat_gateway"{
  source    = "./../../modules/networking/nat_gateway"
  subnet_id = module.subnet_Public_c.pub_sub_id_out
  zone    = "${var.aws_region}c"
  environment = var.environment
}

