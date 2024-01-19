terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

required_version = ">= 1.2.0"

}


provider "aws" {
  region = "ap-northeast-1"
}


resource "aws_instance" "myec2instance" {
	count = 2
	ami = "ami-07c589821f2b353aa"
	instance_type = "t2.micro"
	tags = {
	   Name = "raviraj"
}
}


resource "aws_s3_bucket" "mys3bucket" {
  bucket = "iloveindia"

  tags = {
    Name        = "iloveindia"
    Environment = "Dev"
  }
}


output "ec2_public_ips" {
	value = aws_instance.myec2instance[*].public_ip
}

