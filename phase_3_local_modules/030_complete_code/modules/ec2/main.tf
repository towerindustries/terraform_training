
resource "aws_key_pair" "example-key" {
  key_name   = var.key_name
  public_key = var.public_key
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  tags          = var.ec2_tags

  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
    encrypted   = true
  }
  associate_public_ip_address = true
  vpc_security_group_ids      = var.security_group_id
  user_data                   = var.user_data
}
