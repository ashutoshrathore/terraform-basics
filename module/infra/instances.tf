resource "aws_instance" "abc" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_subnet.abc_private_subnet.id
    device_index         = var.device_index
  }

  credit_specification {
    cpu_credits = "standard"
  }
}
