resource "aws_vpc" "vpc-dev" {
  cidr_block = var.vpc_ipblock_cidr
  enable_dns_hostnames = true
  tags = {
    Name = var.tags_vpc_name
  }
}