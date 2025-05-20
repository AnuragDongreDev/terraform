provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = var.ami  # Amazon Linux 2 AMI (update as per region)
  instance_type = "t2.micro"

  tags = {
    Name = "EC2_created_via_Terraform"
  }
}