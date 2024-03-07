terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.38.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "example_instance" {
  ami           = "ami-023eb5c021738c6d0"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}
