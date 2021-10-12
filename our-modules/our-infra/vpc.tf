module "vpc" {
  source      = "./../../modules/networking/vpc"
  environment = var.environment
  cidr_block  = "${var.vpc_cidr_b_class_block}.0.0/16"
}

