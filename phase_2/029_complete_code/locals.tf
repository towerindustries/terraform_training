locals {
  name           = "dev-amazon2023"
  service_name   = "example"
  environment    = "dev"
  terraform_code = "phase_2_moderate"
}
locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Name        = local.name
    Service     = local.service_name
    Environment = local.environment
    Terraform   = local.terraform_code
  }
  environment_tags = merge(local.common_tags, {
    department = "devsecops"
    owner      = "dev.at.saintcon.org"
  })
  network_tags = merge(local.common_tags, {
    department = "network-team"
    owner      = "noc.at.saintcon.org"
  })
}