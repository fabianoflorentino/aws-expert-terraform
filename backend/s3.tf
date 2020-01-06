provider "aws" {
  
  version                 = "~> 3"
  region                  = var.region
  profile                 = var.profile
  shared_credentials_file = var.shared_credentials_file

}

resource "aws_s3_bucket" "terraform_state" {

  bucket = var.bucket
  acl    = var.acl

  tags = {

    Name        = var.tags_name
    Environment = var.tags_env

  }

}