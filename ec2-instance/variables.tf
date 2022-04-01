variable "vault_addr" {
  default="<VAULT URL>"
}
variable "vault_token" {
  default = "<VAULT TOKEN>"
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