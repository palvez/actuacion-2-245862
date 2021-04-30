resource "aws_security_group" "permitir-ssh" {
  name        = "Permitir_ssh"
  description = "Permitir trafico SSH entrante"
  vpc_id      = aws_vpc.pa245862-vpc.id

  ingress {
    description      = "SSH desde VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "permitir-ssh"
  }
}