resource "aws_subnet" "public" {

  count             = var.az_count
  cidr_block        = cidrsubnet(aws_vpc.vpc-dev.cidr_block, 8, count.index +1)
  availability_zone = data.aws_availability_zones.available.names[count.index]
  vpc_id            = aws_vpc.vpc-dev.id

  tags = {

    Name = "public-dev-10-0-${count.index +1}-0-cdir-24-${data.aws_availability_zones.available.names[count.index]}"

  }

}

resource "aws_subnet" "private" {

  count             = var.az_count
  cidr_block        = cidrsubnet(aws_vpc.vpc-dev.cidr_block, 8, count.index + var.az_count +1)
  availability_zone = data.aws_availability_zones.available.names[count.index]
  vpc_id            = aws_vpc.vpc-dev.id

  tags = {

    Name = "private-dev-10-0-${count.index + var.az_count +1}-0-cdir-24-${data.aws_availability_zones.available.names[count.index]}"

  }

}

resource "aws_subnet" "mgmt" {

  count             = var.az_count
  cidr_block        = cidrsubnet(aws_vpc.vpc-dev.cidr_block, 8, count.index + var.az_count +3)
  availability_zone = data.aws_availability_zones.available.names[count.index]
  vpc_id            = aws_vpc.vpc-dev.id

  tags = {

    Name = "mgmt-dev-10-0-${count.index + var.az_count +3}-0-cdir-24-${data.aws_availability_zones.available.names[count.index]}"

  }

}