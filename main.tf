provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "dev1" {
  ami = "ami-002f6e91abff6eb96"
  instance_type = "t2.micro"
  key_name = "devsecops"
  tags = {
    Name = "dev"
  }
}

output "instance_ip" {
  value = aws_instance.dev1.public_ip
}
