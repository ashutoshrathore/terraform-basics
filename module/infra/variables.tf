variable "ami" {
  description = "It should have a appropriate ami id"
  type        = string
  default     = "ami-005e54dee72cc1d00"
}

variable "instance_type" {
  description = "appropriate instance type"
  type        = string
  default     = "t2.micro"
}

variable "device_index" {
  description = "device index"
  type        = number
  default     = 0
}

variable "private_ips" {
    type = list
    default =  ["172.16.10.111", "172.16.10.110", "172.16.10.109"]
}

variable "instance_count" {
    type = number
    default = 2
}

variable "vpc_cidr_block" {
  type = string
}

variable "subnet_cidr_block" {
  type = string
}