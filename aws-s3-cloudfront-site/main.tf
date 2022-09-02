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

/*
  Upload an index.html file to an s3 bucket to ensure
  that CloudFront distribution allows to access website
*/
module "populate" {
  source      = "./modules/populate"
  bucket_name = module.website.website_bucket_name
  file_path   = "./files/index.html"
}
