#vpc_id              = "vpc-064f65099fb2fb4d4"
provision           = true
prefix_name         = "swe"
internal_cidr       = "10.0.0.0/16"
instance_tenancy    = "default"
private_subnet_cidr = ["10.0.125.0/24"]
public_subnet_cidr  = ["10.0.0.0/20"]
availability_zones  = ["ap-south-1a"] #["ap-south-1a","ap-south-1b","ap-south-1c"]
# availability_zones_ids=["aps1-az1","aps1-az3","aps1-az2"]
# customer_owned_ipv4_pool=""
map_customer_owned_ip_on_launch = false
map_public_ip_on_launch         = false
tags ={
    "project" = "swe"}
public_subnet_tags= {
    tier = "public"
  }
private_subnet_tags = {
    tier = "private"
  }  