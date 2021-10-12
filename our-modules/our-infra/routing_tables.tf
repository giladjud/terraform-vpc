############### Public RTs #############################

module "Public_RT" {
  source      = "./../../modules/networking/routing_table_public"
  environment = var.environment
  vpc_id      = module.vpc.vpc_id_out
  gateway_id  = module.igw.igw_id_out
  rt_name     = "${var.environment}-Public-RT"
}

############### Private RTs zone a #############################

module "Private_RT_az_a" {
  source         = "./../../modules/networking/routing_table_private"
  environment    = var.environment
  vpc_id         = module.vpc.vpc_id_out
  nat_gateway_id = module.az_a_nat_gateway.nat_gateway_id
  rt_name     = "${var.environment}-Private-a-RT"
}

############### Private RTs zone b #############################

module "Private_RT_az_b" {
  source         = "./../../modules/networking/routing_table_private"
  environment    = var.environment
  vpc_id         = module.vpc.vpc_id_out
  nat_gateway_id = module.az_b_nat_gateway.nat_gateway_id
  rt_name     = "${var.environment}-Private-b-RT"
}

############### Private RTs zone c #############################

module "Private_RT_az_c" {
  source         = "./../../modules/networking/routing_table_private"
  environment    = var.environment
  vpc_id         = module.vpc.vpc_id_out
  nat_gateway_id = module.az_c_nat_gateway.nat_gateway_id
  rt_name     = "${var.environment}-Private-c-RT"
}
