provider "aws" {
    region = var.region
}

terraform {
    backend "s3" {
        bucket = "remote-backend-s3-dhruv"
        key = "terraform.tfstate"
        region = "us-east-1"
        encrypt = true
    }
}

resource "aws_instance" "cleanup" {
    ami = "ami-0b6c6ebed2801a5cb"
    instance_type = "t3.micro"
    tags = {
        Name = "myapp-test"
    }
}