resource "aws_subnet" "my_first_private_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "eu-central-1a"
  tags = {
    Name = "private_subnet1"
  }
}


resource "aws_subnet" "my_second_private_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "eu-central-1b"
  tags = {
    Name = "private_subnet2"
  }
}