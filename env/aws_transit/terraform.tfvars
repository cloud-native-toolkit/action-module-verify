region              = "ap-south-1"
provision           = true
name_prefix         = "swe-std-edge"
name_prefix_work    = "swe-std-advance-work"
name_prefix_menage  = "swe-std-advance-menage"
resource_group_name = "vpc-advance"

#VPN Client

client_cidr_block = "172.61.0.0/16"
dns_servers       = ["10.1.0.2", "10.2.0.2"]

#vpc:
internal_cidr        = "10.0.0.0/16"
internal_cidr_menage = "10.1.0.0/16"
internal_cidr_work   = "10.2.0.0/16"
instance_tenancy     = "default"
availability_zones   = ["ap-south-1a", "ap-south-1b", "ap-south-1c"] #,"ap-south-1b", "ap-south-1c"

pub_subnet_cidrs_edge   = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
pub_subnet_cidrs_menage = [""]
pub_subnet_cidrs_work   = [""]
//pub_subnet_cidrs_menage      = ["10.1.50.0/24", "10.1.51.0/24", "10.1.52.0/24"]
//pub_subnet_cidrs_work      = ["10.2.50.0/24", "10.2.51.0/24", "10.2.52.0/24"]
num_of_public_subnets = 3




#private subnet rosa
#priv_subnet_cidrs_rosa      = ["10.1.7.0/24", "10.1.8.0/24", "10.1.9.0/24"] #,"10.0.144.0/20","10.0.160.0/20"
#cidr: 10.0.64.0/18
//machine-cidr                = “10.20.0.0/16”
priv_subnet_cidrs_edge      = ["10.0.64.0/24", "10.0.65.0/24", "10.0.66.0/24"]
priv_subnet_cidrs_menage    = ["10.1.64.0/24", "10.1.65.0/24", "10.1.66.0/24"]
priv_subnet_cidrs_work      = ["10.2.64.0/24", "10.2.65.0/24", "10.2.66.0/24"]
num_of_private_subnets      = 3
num_of_private_subnets_rosa = 3


/*

#private subnet rosa
priv_subnet_cidrs_rosa      = ["10.1.64.0/18" (Ansible config), "10.1.8.0/24", "10.1.9.0/24"] #,"10.0.144.0/20","10.0.160.0/20"
num_of_private_subnets_rosa = 3

*/


# #private subnet ec2inst
# #priv_subnet_cidrs_ec2inst      = ["10.1.10.0/24", "10.1.11.0/24", "10.1.12.0/24"] #,"10.0.144.0/20","10.0.160.0/20"
# #cidr = 10.0.128.0/18
# priv_subnet_cidrs_ec2inst      = ["10.0.64.0/24", "10.0.65.0/24", "10.0.66.0/24"]
# num_of_private_subnets_ec2inst = 3

#ngw
connectivity_type = "public"

acl_rules_pub = [
  {
    rule_number = 100
    rule_action = "allow"
    egress      = false
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number = 100
    rule_action = "allow"
    egress      = true
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
    egress      = false
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_block  = "0.0.0.0/0"
  },
  {
    rule_number = 100
    rule_action = "allow"
    egress      = true
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_block  = "0.0.0.0/0"
  },
]
