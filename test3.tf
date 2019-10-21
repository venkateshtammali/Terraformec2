# main.tf
terraform {
  required_version = "~> 0.12.0"

  backend "remote" {}
}
provider "aws" {
  access_key = "${var.AWS_ACCESS_KEY}"
  secret_key = "${var.AWS_SECRET_KEY}"
  region     = "${var.AWS_REGION}"
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = "${aws_instance.example.id}"
  allocation_id = "${aws_eip.example.id}"
}
resource "aws_instance" "example" {
  ami = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  }

resource "aws_eip" "example" {
  vpc = true
  } 

output "ip" {
  value = aws_eip.example.public_ip
}
