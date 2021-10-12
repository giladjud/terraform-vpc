# create a security group
resource "aws_security_group" "security_group" {
  count       = var.sg_enabled ? 1 : 0
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
         Name = var.sg_name,
         env  = var.sg_environment,
         role = var.sg_role
         created_by = "Terraform"
         }
}
