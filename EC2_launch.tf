provider "aws" {
  region = "ap-south-1"  # Mumbai region
}

# Security Group to allow port 8081
resource "aws_security_group" "allow_8081" {
  name        = "allow_8081_sg"
  description = "Allow port 8081 inbound traffic"

  ingress {
    description = "Allow HTTP on port 8081"
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "my_ec2" {
  ami           = "ami-07216ac99dc46a187"  # Amazon Linux 2 (ap-south-1) - verify latest
  instance_type = "t2.medium"
  key_name      = "project"  # replace with your key pair

  vpc_security_group_ids = [aws_security_group.allow_8081.id]

  tags = {
    Name = "Terraform-EC2"
  }
}