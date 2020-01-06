resource "aws_network_acl" "mgmt" {
  
  count       = var.az_count
  vpc_id      = aws_vpc.vpc-dev.id
  subnet_ids  = ["${aws_subnet.mgmt[count.index].id}"]
  
  ingress {
    
    cidr_block  = "0.0.0.0/0"
    protocol    = "tcp"
    rule_no     = 200
    action      = "allow"
    from_port   = 443
    to_port     = 443
  
  }
  
  ingress {
    
    cidr_block  = "0.0.0.0/0"
    protocol    = "tcp"
    rule_no     = 100
    action      = "allow"
    from_port   = 80
    to_port     = 80
  
  }
  
  egress {
    
    cidr_block  = "0.0.0.0/0"
    protocol    = "tcp"
    rule_no     = 200
    action      = "allow"
    from_port   = 443
    to_port     = 443
  
  }
  
  egress {
    
    cidr_block  = "0.0.0.0/0"
    protocol    = "tcp"
    rule_no     = 100
    action      = "allow"
    from_port   = 80
    to_port     = 80
  
  }

  tags = {
  
    Name = "mgmt-dev-10-0-${count.index +1}-0-cdir-24-${data.aws_availability_zones.available.names[count.index]}"
  
  }

}