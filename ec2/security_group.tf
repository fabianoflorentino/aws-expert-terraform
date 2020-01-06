resource "aws_security_group" "public" {
  
  count = var.az_count
  name  = "ssh"
  
  ingress {
    
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${cidrsubnet(aws_vpc.vpc-dev.cidr_block, 8, count.index +1)}"]
  
  }
  
  egress {
  
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  
  }

}