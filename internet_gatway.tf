resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "IGW"
  }
}


resource "aws_nat_gateway" "my_nat" {
 allocation_id     = aws_eip.eip.id
 subnet_id         = aws_subnet.my_first_public_subnet.id 
  tags= {
    Name: "NAT"
  }
}