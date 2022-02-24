cloud_provider="aws"

region="us-east-1"


#VPC module: New VPC
provision=true
resource_group_name="vpc-base"
name_prefix="sw-demo"

internal_cidr="10.0.0.0/16"
instance_tenancy="default"


#Nat Gateaway
#connectivity_type="private"  #public / private

subnet_cidrs  =  ["10.0.128.0/20","10.0.144.0/20"] #public subnets for provisioning public and private NAT gateways
availability_zones =["us-east-1a","us-east-1b"] # ["ap-south-1a","ap-south-1b"]

#pulic subnet - for testing subnet module
pub_subnet_cidrs=["10.0.0.0/20","10.0.125.0/24"]
num_of_public_subnets=2

#private subnet - for testing subnet module
priv_subnet_cidrs=["10.0.128.0/20","10.0.144.0/20"]
num_of_private_subnets=2

acl_rules_pub = [
    {
      rule_number = 100
      rule_action = "allow"
      egress = false      
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
    {
      rule_number = 100
      rule_action = "allow"
      egress = true
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
]  
acl_rules_pri = [
    {
      rule_number = 100
      rule_action = "allow"
      egress = false      
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
    {
      rule_number = 100
      rule_action = "allow"
      egress = true
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
]  

#ngw
# connectivity_type="public"
