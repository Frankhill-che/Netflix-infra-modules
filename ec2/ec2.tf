resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = "netflix-web-server"
  }
}
