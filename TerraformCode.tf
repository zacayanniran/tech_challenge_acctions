# Provider configuration
provider "aws" {
  access_key = ""
  secret_key = ""
  token = ""
  region = "us-east-1"
}

# Resource configuration - s3 bucket
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "Flugel"
    Owner = "InfraTeam"
  }
}

# Resource configuration - ec2
resource "aws_instance" "CentOSEC2" {
ami = "ami-000a59677875221a3"
instance_type = "t2.micro"
key_name = "linuxec2"

tags = {
    Name        = "Flugel"
    Owner = "InfraTeam"
  }
}