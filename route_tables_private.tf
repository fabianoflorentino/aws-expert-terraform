resource "aws_route_table" "natgw_private" {

  count  = var.az_count
  vpc_id = aws_vpc.vpc-dev.id

  route {

    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = element(aws_nat_gateway.natgw.*.id, count.index)

  }

  tags = {

    Name = "private-dev-10-0-${count.index +1}-0-cdir-24-${data.aws_availability_zones.available.names[count.index]}"

  }

}


resource "aws_route_table_association" "natgw_private" {

  count          = var.az_count
  subnet_id      = element(aws_subnet.private.*.id, count.index)
  route_table_id = element(aws_route_table.natgw_private.*.id, count.index)

}