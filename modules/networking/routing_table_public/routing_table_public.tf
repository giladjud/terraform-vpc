# create a private route table, to be included as part of private subnet modules
# and associated to a NAT gateway
resource "aws_route_table" "public_route_table" {
  vpc_id = var.vpc_id


  tags = {
    Name        = var.rt_name
    Environment = var.environment
  }
}

resource "aws_route" "route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = var.cidr_block
  gateway_id             = var.gateway_id
}
