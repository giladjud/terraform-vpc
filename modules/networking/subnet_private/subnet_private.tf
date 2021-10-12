# create a private subnet in an availability zone, associated with a private routing table
module "subnet_private" {
  source                  = "./../subnet"
  environment             = var.environment
  cidr_block              = var.cidr_block
  vpc_id                  = var.vpc_id
  availability_zone       = var.availability_zone
  function                = var.function
  purpose                 = "internal-elb"
  map_public_ip_on_launch = "false"
  aws_region              = var.aws_region
  subnet_name             = var.subnet_name
}

# associate public routing table with subnet
resource "aws_route_table_association" "private_subnet_route_association" {
  subnet_id      = module.subnet_private.subnet_id_out
  route_table_id = var.route_table_id
}
