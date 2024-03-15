resource "aws_security_group" "security_group" {
  name        = "terraform_sg"
  vpc_id      = aws_vpc.my_vpc.id
  description = "My security group for terraform instance"

  ingress {          #for inbound
    from_port   = 22
    to_port     = 100
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH access from anywhere
  }

   ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {           #for outbound
    from_port   = 0
    to_port     = 0
    protocol    = "-1" #for all type tcp/udp
    cidr_blocks = ["0.0.0.0/0"]  
  }
}

  