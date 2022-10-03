region="ap-south-1"
cloud_provider="aws"

#VPC module  module 
provision=true
name_prefix="swe1"
prefix_name="swe1"
internal_cidr="10.0.0.0/16"
instance_tenancy="default"


#Subnet  module 
#provision= true
num_of_public_subnets=1
num_of_private_subnets=1
private_subnet_cidr=["10.0.125.0/24"]
public_subnet_cidr=["10.0.0.0/20"]
availability_zones=["ap-south-1a"]
# availability_zones=["ap-south-1a","ap-south-1b","ap-south-1c"]
# availability_zones_ids=["aps1-az1","aps1-az3","aps1-az2"]
# customer_owned_ipv4_pool=""
map_customer_owned_ip_on_launch=false
map_public_ip_on_launch=false
tags ={
    "project" = "swe"}
public_subnet_tags= {
    tier = "public"
  }
private_subnet_tags = {
    tier = "private"
  }  
acl_rules_pub_in = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
]  
acl_rules_pub_out=[
  {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
  },
]
acl_rules_pri_in=[
 {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
]
acl_rules_pri_out=[
  {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
]


description="KMS Keys for Data Encryption"
key_spec="SYMMETRIC_DEFAULT"
rotation_enabled="true"
enabled="true"
alias="kms-storage"
kms_alias="kms-storage-alias"
user_arn="arn:aws:iam::005990573564:root"
