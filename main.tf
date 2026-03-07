provider "aws" {
    region = var.region
}

terraform {
    backend "s3" {
        bucket = "var.bucket"
        key = "terraform.tfstate"
        region = "var.region"
        encrypt = true
    }
}

resource "aws_instance" "mul_env_instance" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
        Name = "myapp-${var.env}"
    }
}