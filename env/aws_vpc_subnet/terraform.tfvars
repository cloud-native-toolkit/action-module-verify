region="ap-south-1"
provision= true
name_prefix="sw-demo"
resource_group_name="vpc-base"

#vpc:
internal_cidr       = "10.0.0.0/16"
instance_tenancy    = "default"
#availability_zones=["us-east-2a","us-east-2c"]
multi-zone = true
#pulic subnet
pub_subnet_cidrs=["10.0.0.0/20", "10.0.16.0/20", "10.0.32.0/20"] #["10.0.0.0/20","10.0.125.0/24"]

#private subnet
priv_subnet_cidrs=["10.0.128.0/20","10.0.144.0/20"]


#ngw
# connectivity_type="public"

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

