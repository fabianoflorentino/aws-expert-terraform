variable "profile_name" {
  default = "fabiano.florentino"
}

variable "default_region" {
  default = "us-east-1"
}

variable "bucket_name" {
  default = "codar-dev-terraform-state"
}

variable "vpc_ipblock_cidr" {
  default = "10.0.0.0/16"
}

variable "destination_cidr_block" {
  default = "0.0.0.0/0"
}

variable "az_count" {
    default = "2"
}

# variable "instance_name" {
#   description = "Name of instance."
# }

# variable "instance_type" {
#   description = "Instance type Ex. t2.micro"
# }

# variable "instance_count" {
#   description = "Number of instance to create."
# }

# variable "aws_ami" {
#   default = "ami-0b69ea66ff7391e80"
# }