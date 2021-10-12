# outputs produced at the end of a terraform apply: id of security group
output "sg_id_out" {
  value = aws_security_group.security_group[0].id
}
