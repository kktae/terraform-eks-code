# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_route_table_association.rtbassoc-024cb38ce64e85194:
resource "aws_route_table_association" "rtbassoc-024cb38ce64e85194" {
  route_table_id = aws_route_table.rtb-0c9df3106b9e1bca9.id
  subnet_id      = aws_subnet.subnet-05937b8ca518f111e.id
}
