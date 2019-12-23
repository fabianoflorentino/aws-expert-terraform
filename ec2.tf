resource "aws_instance" "new" {
  count                  = var.instance_count
  ami                    = var.aws_ami
  instance_type          = var.instance_type

  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }
}