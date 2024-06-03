# saintcon23/advanced_terraform/intro_to_modules/providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.52.0"
    }
  }
  required_version = ">= 1.8.4"
}

provider "aws" {
  # Configuration options
  region = var.region
}
