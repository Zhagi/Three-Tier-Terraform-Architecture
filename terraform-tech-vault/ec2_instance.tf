provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "dev_instance" {
  ami           = "ami-05e4ed86eaaac596f" # Replace with the latest Amazon Linux 2 AMI ID in your region
  instance_type = "t2.micro"

  tags = {
    Name        = "DevInstance"
    Environment = "Dev"
  }
}

