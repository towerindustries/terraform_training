# saintcon23/advanced_terraform/intro_to_modules/modules/networking/variables.tf
###################
## VPC Variables ##
###################
variable "vpc_tags" {
  description = "vpc tags"
  type        = map(string)
  default     = {}
}
variable "vpc_cidr_block_ipv4" {
  description = "The CIDR block of the VPC"
  type        = string
  default     = ""
}
variable "vpc_cidr_block_ipv6" {
  description = "The ipv6 CIDR block of the VPC"
  type        = string
  default     = ""
}
variable "ipv6_ipam_pool_id" {
  description = "The ipv6 ipam pool id"
  type        = string
  default     = ""
}
######################
## Subnet Variables ##
######################

variable "subnet_cidr_block_ipv4" {
  description = "The ipv4 CIDR block of the subnet"
  type        = string
  default     = ""
}
variable "subnet_cidr_block_ipv6" {
  description = "The ipv6 CIDR block of the subnet"
  type        = string
  default     = ""

}
variable "availability_zone" {
  description = "The availability zone"
  type        = string
  default     = ""
}
variable "network_tags" {
  description = "network tags"
  type        = map(string)
  default     = {}
}
variable "map_public_ip_on_launch" {
  // variable configuration
  type    = bool
  default = false
}