resource "aws_subnet" "my_first_public_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-central-1a"
  tags = {
    Name = "public_subnet1"
  }
}


resource "aws_subnet" "my_second_public_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-central-1b"
  tags = {
    Name = "public_subnet2"
  }
}