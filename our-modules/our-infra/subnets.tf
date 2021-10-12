################ Public Subnets ##################################

module "subnet_Public_a" {
  source            = "./../../modules/networking/subnet_public"
  environment       = var.environment
  function          = "Utility"
  cidr_block        = "${var.vpc_cidr_b_class_block}.8.0/22"
  vpc_id            = module.vpc.vpc_id_out
  availability_zone = var.subnet_a_az
  route_table_id    = module.Public_RT.pub_route_table_id_out
  aws_region        = var.aws_region
  subnet_name       = "${var.environment}-Public-A"
}

module "subnet_Public_b" {
  source            = "./../../modules/networking/subnet_public"
  environment       = var.environment
  function          = "Utility"
  cidr_block        = "${var.vpc_cidr_b_class_block}.20.0/22"
  vpc_id            = module.vpc.vpc_id_out
  availability_zone = var.subnet_b_az
  route_table_id    = module.Public_RT.pub_route_table_id_out
  aws_region        = var.aws_region
  subnet_name       = "${var.environment}-Public-B"
}

module "subnet_Public_c" {
  source            = "./../../modules/networking/subnet_public"
  environment       = var.environment
  function          = "Utility"
  cidr_block        = "${var.vpc_cidr_b_class_block}.28.0/22"
  vpc_id            = module.vpc.vpc_id_out
  availability_zone = var.subnet_c_az
  route_table_id    = module.Public_RT.pub_route_table_id_out
  aws_region        = var.aws_region
  subnet_name       = "${var.environment}-Public-C"
}

################ Private Subnets ##################################

module "subnet_Private_a" {
  source            = "./../../modules/networking/subnet_private"
  environment       = var.environment
  function          = "Private"
  cidr_block        = "${var.vpc_cidr_b_class_block}.40.0/22"
  vpc_id            = module.vpc.vpc_id_out
  availability_zone = var.subnet_a_az
  route_table_id    = module.Private_RT_az_a.priv_route_table_id_out
  aws_region        = var.aws_region
  subnet_name       = "${var.environment}-Private-A"
}

module "subnet_Private_b" {
  source            = "./../../modules/networking/subnet_private"
  environment       = var.environment
  function          = "Private"
  cidr_block        = "${var.vpc_cidr_b_class_block}.48.0/22"
  vpc_id            = module.vpc.vpc_id_out
  availability_zone = var.subnet_b_az
  route_table_id    = module.Private_RT_az_b.priv_route_table_id_out
  aws_region        = var.aws_region
  subnet_name       = "${var.environment}-Private-B"
}

module "subnet_Private_c" {
  source            = "./../../modules/networking/subnet_private"
  environment       = var.environment
  function          = "Private"
  cidr_block        = "${var.vpc_cidr_b_class_block}.60.0/22"
  vpc_id            = module.vpc.vpc_id_out
  availability_zone = var.subnet_c_az
  route_table_id    = module.Private_RT_az_c.priv_route_table_id_out
  aws_region        = var.aws_region
  subnet_name       = "${var.environment}-Private-C"
}

