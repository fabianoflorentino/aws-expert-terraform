resource "aws_internet_gateway" "gw" {
  vpc_id  = aws_vpc.vpc-dev.id
  
  tags = {
    Name = "Internet Gateway"
  }
}