provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "ap-south-1"
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = "${aws_instance.test.id}"
  allocation_id = "${aws_eip.example.id}"
}

resource "aws_instance" "test" {
  ami           = "ami-02913db388613c3e1"
  instance_type = "t2.micro"

  tags = {
    Name = "apty"
  }
}

resource "aws_eip" "example" {
  vpc = true
  } 

output "ip" {
  value = aws_eip.example.public_ip
}
this is error code in terraform
