provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "komal12345"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}


resource "aws_vpc" "ci-cd" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "ci-cd"
  }
}