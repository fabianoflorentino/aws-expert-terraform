resource "aws_route_table" "public" {
  
  vpc_id        = aws_vpc.vpc-dev.id
  
  route {
  
    cidr_block  = var.destination_cidr_block
    gateway_id  = aws_internet_gateway.gw.id
  
  }
  
  tags = {
  
    Name = "public-dev-10-0-0-0-cdir-16-us-east-1"
  
  }

}

resource "aws_route_table" "private" {
  
  vpc_id        = aws_vpc.vpc-dev.id
  
  route {
  
    cidr_block  = var.destination_cidr_block
    gateway_id  = aws_internet_gateway.gw.id
  
  }
  
  tags = {
  
    Name = "private-dev-10-0-0-0-cdir-16-us-east-1"
  
  }

}

resource "aws_route_table" "mgmt" {

  vpc_id        = aws_vpc.vpc-dev.id
  
  route {

    cidr_block  = var.destination_cidr_block
    gateway_id  = aws_internet_gateway.gw.id

  }
  
  tags = {

    Name = "mgmt-dev-10-0-0-0-cdir-16-us-east-1"

  }

}