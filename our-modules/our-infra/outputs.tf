output "vpc_id" {
  value = module.vpc.vpc_id_out
}

output "vpc_cidr" {
  value = module.vpc.vpc_cidr_out
}

output "internal_security_group_id" {
  value = module.internal_security_group.sg_id_out
}

output "vpn_security_group_id" {
  value = module.vpn_security_group.sg_id_out
}

output "public_a_subnet_id" {
  value = module.subnet_Public_a.pub_sub_id_out
}

output "private_a_subnet_id" {
  value = module.subnet_Private_a.priv_sub_id_out
}

output "private_b_subnet_id" {
  value = module.subnet_Private_b.priv_sub_id_out
}

output "private_c_subnet_id" {
  value = module.subnet_Private_c.priv_sub_id_out
}

output "rtb_private_a_id" {
  value = module.Private_RT_az_a.priv_route_table_id_out
}

output "rtb_private_b_id" {
  value = module.Private_RT_az_b.priv_route_table_id_out
}

output "rtb_private_c_id" {
  value = module.Private_RT_az_c.priv_route_table_id_out
}
