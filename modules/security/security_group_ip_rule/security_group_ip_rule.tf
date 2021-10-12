# create a security group rule
resource "aws_security_group_rule" "allow_access_external" {
  count             = var.sg_rule_enabled ? 1 : 0
  type              = "ingress"
  from_port         = var.sg_rule_from_port
  to_port           = var.sg_rule_to_port
  protocol          = var.sg_rule_protocol
  cidr_blocks       = var.sg_rule_cidr_blocks
  security_group_id = var.sg_id
  description       = var.sg_rule_description
}
