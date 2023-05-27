resource "aws_vpc" "ABC_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "abc-vpc"
  }
}