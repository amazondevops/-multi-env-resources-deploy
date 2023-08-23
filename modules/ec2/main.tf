resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  key_name      = var.key_name
  subnet_id = var.subnet_id
  tags = {
    Name = var.ec2-name
  }
}


