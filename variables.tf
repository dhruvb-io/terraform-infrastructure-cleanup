variable "ami" {
  type = string
  description = "Amazon Machine Image"
}
variable "instance_type" {
  type = string
  description = "type of instance"
  default = "t3.micro"
}
variable "instance_name" {
  type = string
  description = "Name of Instance"
}
variable "region" {
  type = string
  description = "region"
}
variable "cidr_block" {
  type = string
  description = "CIDR Block"
}
variable "subnet_cidr" {
  type = string
  description = "Subnet CIDR"
}
variable "availability_zone" {
  type = string
  description = "Availability Zone"
}
variable "key_name" {
  type = string
  description = "Key Name"
}