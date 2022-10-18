# Create association for elastic ip and instance 

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.my_public_server.id
  allocation_id = aws_eip.eip.id
}