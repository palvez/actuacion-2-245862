resource "aws_vpc" "pa245862-vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_internet_gateway" "pa245862-ig" {
  vpc_id = aws_vpc.pa245862-vpc.id
}

resource "aws_default_route_table" "pa-245862-rt" {
  default_route_table_id = aws_vpc.pa245862-vpc.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.pa245862-ig.id
  }

  tags = {
    Name = "Salida a internet"
  }
}

resource "aws_subnet" "pa245862-subnet" {
  vpc_id     = aws_vpc.pa245862-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = var.az-1a
  map_public_ip_on_launch = true
  tags = {
    Name = "Subred US-East-1a"
  }
}