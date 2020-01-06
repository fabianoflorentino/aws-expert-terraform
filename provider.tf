provider "aws" {
  
  version                 = "~> 3"
  region                  = var.region 
  profile                 = var.profile
  shared_credentials_file = var.shared_credentials_file

}

terraform {

  required_version = ">= 0.12"

  backend "s3" {
    
    bucket                  = "codar-dev-terraform-state"
    key                     = "terraform.state"
    region                  = "us-east-1"
    profile                 = "fabiano.florentino"
    shared_credentials_file = "/home/terraform/.aws/credencials"
  
  }

}