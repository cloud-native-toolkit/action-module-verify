#vpc_id              = "vpc-064f65099fb2fb4d4"
region              = "ap-south-1"
existing_vpc        = true
provision           = true
dry_run             = false
prefix_name         = "swe-rosa"

cluster_name        = "ind-rosa-oldvpc"
ocp_version         = "4.9.15"
no_of_compute_nodes = 2
machine-cidr        = "10.0.0.0/16"
service-cidr        = "172.30.0.0/16"
pod-cidr            = "10.128.0.0/14"
host-prefix         = 23
public_subnet_ids   = ["subnet-06d0a8066ed3e64d1"]
private_subnet_ids  = ["subnet-0a350449103177c71"]
