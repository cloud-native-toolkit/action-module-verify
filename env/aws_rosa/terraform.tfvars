region              = "us-east-1" #"ap-south-1" #us-east-1
provision           = true
name_prefix         = "bom-ro"
resource_group_name = "vpc-ro"

#vpc:
internal_cidr      = "10.0.0.0/16"
instance_tenancy   = "default"
availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"] #"ap-south-1a","ap-south-1b", "ap-south-1c"

#pulic subnet
pub_subnet_cidrs      = ["10.0.0.0/20", "10.0.16.0/20", "10.0.32.0/20"] #,"10.0.16.0/20","10.0.32.0/20"
num_of_public_subnets = 1

#private subnet
priv_subnet_cidrs      = ["10.0.128.0/20", "10.0.144.0/20", "10.0.160.0/20"] #,"10.0.144.0/20","10.0.160.0/20"
num_of_private_subnets = 3

#ngw
connectivity_type = "public"

# acl_rules_pub = [
#   {
#     rule_number = 100
#     rule_action = "allow"
#     egress      = false
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_block  = "0.0.0.0/0"
#   },
#   {
#     rule_number = 100
#     rule_action = "allow"
#     egress      = true
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_block  = "0.0.0.0/0"
#   },
# ]

# acl_rules_pri = [
#   {
#     rule_number = 100
#     rule_action = "allow"
#     egress      = false
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_block  = "0.0.0.0/0"
#   },
#   {
#     rule_number = 100
#     rule_action = "allow"
#     egress      = true
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_block  = "0.0.0.0/0"
#   },
# ]

#rosa variables
dry_run             = false
existing_vpc        = true
multi-zone-cluster  = true
private-link        = false
cluster_name        = ""
ocp_version         = "4.9.15"
no_of_compute_nodes = 1
machine-cidr        = "10.0.0.0/16"
service-cidr        = "172.30.0.0/16"
pod-cidr            = "10.128.0.0/14"
host-prefix         = 23

