resource "aws_subnet" "abc_private_subnet" {
  vpc_id            = aws_vpc.ABC_vpc.id
  cidr_block        = var.subnet_cidr_block
  availability_zone = "us-west-2a"

  tags = {
    Name = "abc_subnet"
  }
}

resource "aws_network_interface" "abc_private_ip" {
  subnet_id   = aws_subnet.abc_private_subnet.id
  private_ips = var.private_ips

  tags = {
    Name = "primary_network_interface"
  }
}
