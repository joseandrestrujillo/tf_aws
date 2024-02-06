terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "tf_ec2_instance" {
  ami = "ami-0c24ee2a1e3b9df45" // Amazon Linux 2023 (hvm)
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}