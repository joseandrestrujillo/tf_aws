terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-1"
}

module "s3_bucket" {
  source        = "terraform-aws-modules/s3-bucket/aws"
  bucket = "jath-terraform-state"

  versioning = {
    enabled = true
  }

  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }
}