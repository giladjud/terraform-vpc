terraform {
  backend "s3" {
    bucket = "company-terraform-dev"
    key    = "terraform-dev-test-infra.tfstate"
    region = "eu-west-1"
  }
}
