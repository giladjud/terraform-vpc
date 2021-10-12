module "aws_key_pair" {
  source      = "./../../modules/security/ssh_key"
  environment = var.environment
  env_pub_key = var.env_pub_key
}
