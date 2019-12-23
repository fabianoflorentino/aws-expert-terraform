provider "aws" {
  region                  = var.default_region
  version                 = "~> 2"
  profile                 = var.profile_name
  shared_credentials_file = "~/.aws/credencials"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = "Terraform State"
    Environment = "Development"
  }
}