resource "aws_instance" "nok" {
  ami           = "ami-068c0051b15cdb816"
  instance_type = "t3.medium"

  key_name = aws_key_pair.loks.key_name

  tags = {
    Name = "nok"
  }
}
