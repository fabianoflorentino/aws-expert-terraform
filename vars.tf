variable "region" {

  type        = string
  default     = "us-east-1"
  description = ""

}

variable "profile" {

  type        = string
  default     = "fabiano.florentino"
  description = ""

}

variable "shared_credentials_file" {

  type        = string
  default     = "/home/terraform/.aws/credencials"
  description = ""

}

variable "bucket" {

  type        = string
  default     = "codar-dev-terraform-state"
  description = ""

}

variable "terraform_key" {

  type        = string
  default     = "terraform.state"
  description = ""

}

variable "acl" {

  type        = string
  default     = "private"
  description = ""

}

variable "tags_vpc_name" {

  type        = string
  default     = "vpc-dev-10-0-0-0-cdir-16-nvirgina-us-east-1"
  description = ""

}

variable "tags_name" {

  type        = string
  default     = "Terraform State"
  description = ""

}

variable "tags_env" {

  type        = string
  default     = "Development"
  description = ""

}

variable "vpc_ipblock_cidr" {

  type        = string
  default     = "10.0.0.0/16"
  description = ""

}

variable "destination_cidr_block" {

  type        = string
  default     = "0.0.0.0/0"
  description = ""

}

variable "az_count" {

    type        = string
    default     = "2"
    description = ""

}