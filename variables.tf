variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  description = "Instance size for production"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "The Amazon Machine Image ID"
  type        = string
  default     = "ami-0b6c6ebed2801a5cb"
}