resource "aws_instance" "ec2-instance1" {
  ami           = "ami-0035ee596a0a12a7b"
  instance_type = "t2.micro"

  tags = {
    Name = "demo-server1"
  }
}


resource "aws_instance" "ec2-Instance2" {
  provider      = aws.west
  ami           = "ami-0b990d3cfca306617" # AMI for us-west-1
  instance_type = "t2.micro"

  tags = {
    Name = "demo-server2"
  }
}
