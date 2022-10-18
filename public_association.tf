# Associate public subnet 1 to route table
resource "aws_route_table_association" "rt_associate_public1" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.aws_route_table_public.id

}