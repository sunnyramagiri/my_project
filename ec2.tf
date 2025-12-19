resource "aws_instance" "nopk" {
  ami = "ami-0ecb62995f68bb549"
  instance_type = "t3.medium"
  key_name = aws_key_pair.lock.key_name

  tags = {
    name = "nopk"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all_sg"
  description = "Allow all inbound and outbound traffic"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-all-sg"
  }
}
