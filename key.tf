resource "aws_key_pair" "loks" {
  key_name   = "terraform-key"
  public_key = file("terraform-key.pub")
}
