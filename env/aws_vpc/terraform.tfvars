cloud_provider="aws"

region="ap-south-1"

resource_group_name="vpc-base"

#VPC module: New VPC
provision=true
prefix_name="swe"
internal_cidr="10.0.0.0/16"
instance_tenancy="default"

#VPC module: Existing VPC -Uncomment below sec 
# provision=false
# vpc_id=""
