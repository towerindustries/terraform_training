####################
## Create the VPC ##
####################
resource "aws_vpc" "example" {
  cidr_block                       = var.vpc_cidr_block_ipv4
  assign_generated_ipv6_cidr_block = true
  enable_dns_support               = true
  enable_dns_hostnames             = true
  tags                             = var.vpc_tags
}
#################################
## Create the Internet Gateway ##
#################################
resource "aws_internet_gateway" "example" {
  vpc_id = aws_vpc.example.id
  tags   = var.network_tags
}
#######################
## Create the Subnet ##
#######################
resource "aws_subnet" "example" {
  vpc_id            = aws_vpc.example.id
  availability_zone = var.availability_zone
  cidr_block        = var.subnet_cidr_block_ipv4
  ipv6_cidr_block   = cidrsubnet(aws_vpc.example.ipv6_cidr_block, 8, 1)

  assign_ipv6_address_on_creation = true
  map_public_ip_on_launch         = var.map_public_ip_on_launch

  tags = var.network_tags
}
############################
## Create the Route Table ##
############################
resource "aws_route_table" "example" {
  vpc_id = aws_vpc.example.id
  tags   = var.network_tags
}
##############################
## Create the Default Route ##
##############################
resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.example.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.example.id
}
resource "aws_route" "example_ipv6" {
  route_table_id              = aws_route_table.example.id
  destination_ipv6_cidr_block = "::/0"
  gateway_id                  = aws_internet_gateway.example.id
}
##################################
## Create the Route Association ##
##################################
resource "aws_route_table_association" "example" {
  subnet_id      = aws_subnet.example.id
  route_table_id = aws_route_table.example.id
}