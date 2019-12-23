provider "aws" {
  region                  = "us-east-1"
  version                 = "~> 2"
  profile                 = "fabiano.florentino"
  shared_credentials_file = "~/.aws/credencials"
}

terraform {
  backend "s3" {
    bucket                  = "codar-dev-terraform-state"
    key                     = "terraform.state"
    region                  = "us-east-1"
    profile                 = "fabiano.florentino"
    shared_credentials_file = "~/.aws/credencials"
  }
}