provider "vault" {
	address = "${var.vault_addr}"
	token = "${var.vault_token}"
}

resource "vault_aws_secret_backend" "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "us-east-2"

  default_lease_ttl_seconds = "300"
  max_lease_ttl_seconds     = "600"
}

resource "vault_aws_secret_backend_role" "vault-ec2-admin" {
  backend = "${vault_aws_secret_backend.aws.path}"
  name    = "vault-ec2-admin"
  credential_type = "iam_user"
  policy_document =  <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "iam:*", "ec2:*"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}