module "media_org_infrastructure" {
  source            = "./module/infra"
  instance_count    = 1
  vpc_cidr_block    = "172.16.10.0/24"
  subnet_cidr_block = "172.16.10.0/24"
  instance_type = "t3.micro"

}

module "mgmt_infrastructure" {
  source            = "./module/infra"
  instance_count    = 5
  vpc_cidr_block    = "10.1.1.0/24"
  subnet_cidr_block = "10.1.10.0/24"

}