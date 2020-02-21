resource "aws_eip" "eip" {
  count = var.az_count
  vpc   = true

  tags = {
    Name = "public-dev-10-0-${count.index +1}-0-cdir-24-${data.aws_availability_zones.available.names[count.index]}"
  }
}

resource "aws_nat_gateway" "natgw" {
  count         = var.az_count
  subnet_id     = element(aws_subnet.public.*.id, count.index)
  allocation_id = element(aws_eip.eip.*.id, count.index)

  tags = {
    Name = "public-dev-10-0-${count.index +1}-0-cdir-24-${data.aws_availability_zones.available.names[count.index]}"
  }
}