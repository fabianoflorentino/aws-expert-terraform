resource "aws_route_table_association" "public_1" {
  
  subnet_id      = aws_subnet.public[0].id
  route_table_id = aws_route_table.public.id

}

resource "aws_route_table_association" "public_2" {

  subnet_id      = aws_subnet.public[1].id
  route_table_id = aws_route_table.public.id

}

resource "aws_route_table_association" "private_1" {

  subnet_id      = aws_subnet.private[0].id
  route_table_id = aws_route_table.private.id

}

resource "aws_route_table_association" "private_2" {

  subnet_id      = aws_subnet.private[1].id
  route_table_id = aws_route_table.private.id

}

resource "aws_route_table_association" "mgmt_1" {

  subnet_id      = aws_subnet.mgmt[0].id
  route_table_id = aws_route_table.mgmt.id

}

resource "aws_route_table_association" "mgmt_2" {

  subnet_id      = aws_subnet.mgmt[1].id
  route_table_id = aws_route_table.mgmt.id

}