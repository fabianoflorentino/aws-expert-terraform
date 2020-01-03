provider "aws" {
  region                  = "us-east-1"
  version                 = "~> 2"
  profile                 = "fabiano.florentino"
  shared_credentials_file = "/home/terraform/.aws/credencials"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "codar-dev-terraform-state"
  acl    = "private"

  tags = {
    Name        = "Terraform State"
    Environment = "Development"
  }
}