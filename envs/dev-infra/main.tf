provider "aws" {
  region = var.aws_region
}

module "infra" {
  source                 = "./../../our-modules/our-infra"
  environment            = var.environment
  aws_region             = var.aws_region
  vpc_cidr_b_class_block = var.vpc_cidr_b_class_block
  env_pub_key            = var.env_pub_key
  subnet_a_az            = var.subnet_a_az
  subnet_b_az            = var.subnet_b_az
  subnet_c_az            = var.subnet_c_az
  
}

module "env_kms_key" {
  source      = "./../../our-modules/our-kms-key"
  environment = var.environment
}

