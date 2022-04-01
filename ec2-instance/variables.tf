variable "vault_addr" {
  default="http://3.220.169.50:8200"
}
variable "vault_token" {
  default = "s.QhneFEWXNM6cuo5JFOgnqfX6"
}
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default = "ami-0892d3c7ee96c0bf7"
}
variable "instance_type" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}

variable "region" {
  default = "us-west-2"
}