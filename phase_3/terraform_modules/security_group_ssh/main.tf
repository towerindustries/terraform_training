resource "aws_security_group" "example" {
  name_prefix = "generic-access"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.sg_cidr_blocks_allow_ssh
    ipv6_cidr_blocks = var.sg_ipv6_cidr_blocks_allow_ssh
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = var.sg_cidr_blocks_allow_http
    ipv6_cidr_blocks = var.sg_ipv6_cidr_blocks_allow_http
  }
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = var.sg_cidr_blocks_allow_https
    ipv6_cidr_blocks = var.sg_ipv6_cidr_blocks_allow_https
  }
  ingress {
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = var.sg_cidr_blocks_allow_rdp
    ipv6_cidr_blocks = var.sg_ipv6_cidr_blocks_allow_rdp
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = var.security_tags

  vpc_id = var.vpc_id
}