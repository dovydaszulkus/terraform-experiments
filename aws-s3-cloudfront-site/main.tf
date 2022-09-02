terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.29.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"

  default_tags {
    tags = {
      Name        = "aws-s3-cloudfront-experiment"
      Environment = "Dev"
    }
  }
}

module "website" {
  source           = "./modules/website"
  main_bucket_name = var.main_bucket_name
}

