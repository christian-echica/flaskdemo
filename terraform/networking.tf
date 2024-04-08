# Fetch the specific VPC information
data "aws_vpc" "devops_vpc" {
  id = "vpc-0300220bf092846a8"
}

# Fetch all subnets for the specific VPC
data "aws_subnet_ids" "devops_vpc_subnets" {
  vpc_id = data.aws_vpc.devops_vpc.id
}

# Reference the existing security group by its ID
data "aws_security_group" "existing_sg" {
  id = "sg-0a5fd8a918d1ba5ab"
}
