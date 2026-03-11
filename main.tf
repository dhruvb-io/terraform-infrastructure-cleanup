provider "aws" {
  region = var.aws_region
}
terraform {
  backend "s3" {
    bucket = "remote-backend-s3-dhruv"
    key = "terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}
resource "aws_instance" "test" {
  ami           = var.ami_id
  instance_type = var.instance_type
tags = {
    Name        = "Test-App-Server"
    Environment = "test"
    ManagedBy   = "Terraform"
    Owner       = "Dhruv"
  }
}