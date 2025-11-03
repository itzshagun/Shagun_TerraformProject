# Terraform Block
terraform {
  required_version = ">= 0.14, <= 2.0.0" # Allows OpenTofu versions from 0.14 up to 2.0
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"  # Allows AWS provider versions >= 3.0 and < 4.0
    }
  }
}
 
# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}
 
/*
Note-1: AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/
