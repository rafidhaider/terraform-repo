terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.43.0"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "myec2" {
  ami = "ami-0a70b9d193ae8a799"
  instance_type = "t2.micro"
}
