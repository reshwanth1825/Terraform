//
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  ingress {
    from_port   = var.ingress_from_port
    to_port     = var.ingress_to_port
    protocol    = "tcp"
    cidr_blocks = var.ingress_cidr
  }
  egress {
    from_port   = var.egress_from_port
    to_port     = var.egress_in_port
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow_tls"
  }
}
resource "aws_instance" "terraform-ec2" {
  ami           = var.ami_id
  instance_type = var.instance_size

  tags = {
    Name = "Reshwanth"
  }
}