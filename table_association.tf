resource "aws_route_table_association" "first_public" {
  subnet_id      = aws_subnet.my_first_public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "second_public" {
  subnet_id     = aws_subnet.my_second_public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}


resource "aws_route_table_association" "first_private" {
  subnet_id      = aws_subnet.my_first_private_subnet.id
  route_table_id = aws_route_table.private_route_table.id
}
resource "aws_route_table_association" "second_private" {
  subnet_id     = aws_subnet.my_second_private_subnet.id
  route_table_id = aws_route_table.private_route_table.id
}