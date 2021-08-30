resource "aws_security_group" "A-sg" {
  name = var.db_sg_name
  vpc_id = var.sg-vpc
  dynamic  "ingress" {
    for_each = var.ingr-sg
    iterator = port
  content {
    from_port = port.value
    to_port   = port.value
    protocol  = "tcp"
    cidr_blocks = var.ingr-cidrs
  }
}
  dynamic "egress" {
    for_each = var.egr-sg
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  tags = {
    Name = "A-db-sg"
  }
}

