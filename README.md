# vault-terraform-aws

This repo does the following:
- Pipeline to spin up an EC2 Instance with Just-in-time AWS Credentials
- An IAM User will be created on the fly with TTL = 5 min
- That IAM User will have a policy attached (runtime) to create EC2 instance only
- Uses Hashicorp's Vault Terraform Provider https://registry.terraform.io/providers/hashicorp/vault/latest/docs



# Instructions
**Create IAM Role:**
- clone the repository
- cd into `aws-backend` (this is to create the IAM role first)
- `terraform init`
- `terraform plan` (optional)
- `terraform apply`

IAM Role with EC2 access gets created!

**Spin Up EC2 Instance:**
 - cd into `aws-infra`
- `terraform init`
- `terraform plan` (optional)
- `terraform apply`

EC2 instance booting up !

Go to IAM in AWS Console and under USERS - you can see user created by Vault and it will disappear after TTL expires(5 min)

Finally :

`terraform destroy`
