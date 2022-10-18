# Create public security group

resource "aws_security_group" "public_sg" {
  name        = "public_sg"
  description = "Allow access to this server"
  vpc_id      = aws_vpc.main_vpc.id

  # INBOUND CONNECTIONS
  ingress {
    description = "Allow SSH into the EC5"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # OUTBOUT CONNECTIONS
  egress {
    description = "Allow access to EC2"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # TCP + UDP
    cidr_blocks = ["0.0.0.0/0"]
  }
}