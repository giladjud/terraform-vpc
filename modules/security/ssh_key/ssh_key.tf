resource "aws_key_pair" "env_key" {
  key_name   = var.environment
  public_key = var.env_pub_key
}
