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

variable "acl" {
  type        = string
  default     = "private"
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