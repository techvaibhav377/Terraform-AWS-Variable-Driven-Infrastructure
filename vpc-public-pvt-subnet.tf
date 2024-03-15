# Create VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "${var.vpc_cidr}"
  tags = {
    Name = "MyVPC"  # name for vpc
  }
}

# Create public subnet
resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "${var.public_subnet_cidr}"
  availability_zone = "${var.availability_zone}"
  map_public_ip_on_launch = true    #it is for auto-attach public IP
tags = {
    Name = "Pub-subnet"  # Subnet name
  }
}
# Create private subnet
resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "${var.private_subnet_cidr}"
  availability_zone = "${var.availability_zone}"
tags = {
  Name = "Private-Subnet"  # Subnet name
  }
}

# Create internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.my_vpc.id
}

# Create route for public subnet to the Internet Gateway
resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
}




# Create NAT gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public.id
  tags = {
    Name = "NATGateway"  # NATGateway" name
  }
}


# Create Elastic IP for NAT Gateway
resource "aws_eip" "nat" {
  domain = "vpc" 
}



# Route traffic from private subnet to NAT Gateway
resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat.id
}

# Associate public subnet with route table
resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

# Create route table for private subnet
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "Pvt-RT"  # RT name
  }
}

# Create route table for public subnet
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "Pub-RT"  # sPub-RT name
  }
}

# Associate private subnet with route table
resource "aws_route_table_association" "private_assoc" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}


