terraform {
  backend "s3" {
    bucket = "jath-terraform-state"
    key = "vpc/terraform.tfstate"
    region = "eu-west-1"
  }
}