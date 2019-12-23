resource "aws_vpc" "vpc-dev" {
  cidr_block = var.vpc_ipblock_cidr
  enable_dns_hostnames = true
  tags = {
    Name = "vpc-dev-10-0-0-0-cdir-16-nvirgina-us-east-1"
  }
}