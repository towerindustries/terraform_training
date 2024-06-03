#################
## EC2 Outputs ##
#################
output "ec2_amazon2023_public_ips" {
  value = aws_instance.amazon2023.public_ip
}
output "ec2_amazon2023_private_ips" {
  value = aws_instance.amazon2023.private_ip
}
output "ec2_amazon2023_private_ipv6" {
  value = aws_instance.amazon2023.ipv6_addresses
}
output "ec2_amazon2023_public_ipv6" {
  value = aws_instance.amazon2023.ipv6_addresses
}