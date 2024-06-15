resource "aws_instance" "My-instance" {
  ami = var.ami-id
  instance_type = var.instance-type
  key_name = var.key-name
  tags = {
    Name=var.instance-name
  }
}

resource "aws_security_group" "my-sg" {
tags = {Name=var.sg-name} 
vpc_id = var.my-vpc-id
}
  
