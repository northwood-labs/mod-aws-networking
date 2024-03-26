output "vpc" {
  description = "An object containing all VPC data."
  value       = data.aws_vpc.vpc
}

output "vpc_arn" {
  description = "The ARN of the VPC in this account."
  value       = data.aws_vpc.vpc.arn
}

output "vpc_cidr" {
  description = "The CIDR of the VPC in this account."
  value       = data.aws_vpc.vpc.cidr_block
}

output "vpc_id" {
  description = "The ID of the VPC in this account."
  value       = data.aws_vpc.vpc.id
}

#-------------------------------------------------------------------------------

output "subnet_ids" {
  description = "List of all Subnet IDs in the VPC."
  value       = data.aws_subnets.subnets.ids
}

#-------------------------------------------------------------------------------

output "subnet_int_a" {
  description = "An object containing all data for subnet A."
  value       = data.aws_subnet.subnet_int_a
}

output "subnet_int_a_arn" {
  description = "The ARN of subnet A."
  value       = data.aws_subnet.subnet_int_a.arn
}

output "subnet_int_a_id" {
  description = "The ID of subnet A."
  value       = data.aws_subnet.subnet_int_a.id
}

output "subnet_int_a_zone" {
  description = "The Availability Zone of subnet A."
  value       = data.aws_subnet.subnet_int_a.availability_zone
}

output "subnet_int_a_zone_id" {
  description = "The Availability Zone ID of subnet A."
  value       = data.aws_subnet.subnet_int_a.availability_zone_id
}

output "subnet_int_a_cidr" {
  description = "The Availability Zone CIDR block of subnet A."
  value       = data.aws_subnet.subnet_int_a.cidr_block
}

#-------------------------------------------------------------------------------

output "subnet_int_b" {
  description = "An object containing all data for subnet B."
  value       = data.aws_subnet.subnet_int_b
}

output "subnet_int_b_arn" {
  description = "The ARN of subnet B."
  value       = data.aws_subnet.subnet_int_b.arn
}

output "subnet_int_b_id" {
  description = "The ID of subnet B."
  value       = data.aws_subnet.subnet_int_b.id
}

output "subnet_int_b_zone" {
  description = "The Availability Zone of subnet B."
  value       = data.aws_subnet.subnet_int_b.availability_zone
}

output "subnet_int_b_zone_id" {
  description = "The Availability Zone ID of subnet B."
  value       = data.aws_subnet.subnet_int_b.availability_zone_id
}

output "subnet_int_b_cidr" {
  description = "The Availability Zone CIDR block of subnet B."
  value       = data.aws_subnet.subnet_int_b.cidr_block
}

#-------------------------------------------------------------------------------

output "subnet_int_c" {
  description = "An object containing all data for subnet C."
  value       = data.aws_subnet.subnet_int_c
}

output "subnet_int_c_arn" {
  description = "The ARN of subnet C."
  value       = data.aws_subnet.subnet_int_c.arn
}

output "subnet_int_c_id" {
  description = "The ID of subnet C."
  value       = data.aws_subnet.subnet_int_c.id
}

output "subnet_int_c_zone" {
  description = "The Availability Zone of subnet C."
  value       = data.aws_subnet.subnet_int_c.availability_zone
}

output "subnet_int_c_zone_id" {
  description = "The Availability Zone ID of subnet C."
  value       = data.aws_subnet.subnet_int_c.availability_zone_id
}

output "subnet_int_c_cidr" {
  description = "The Availability Zone CIDR block of subnet C."
  value       = data.aws_subnet.subnet_int_c.cidr_block
}

#-------------------------------------------------------------------------------

output "route_table" {
  description = "An object containing all data for this route table."
  value       = data.aws_route_table.route_table
}

output "route_table_arn" {
  description = "The ARN of this route table."
  value       = data.aws_route_table.route_table.arn
}

output "route_table_id" {
  description = "The ID of this route table."
  value       = data.aws_route_table.route_table.id
}

#-------------------------------------------------------------------------------

output "internet_gateway" {
  description = "An object containing all data for this internet gateway."
  value       = data.aws_internet_gateway.igw
}

output "internet_gateway_arn" {
  description = "The ARN of this internet gateway."
  value       = data.aws_internet_gateway.igw.arn
}

output "internet_gateway_id" {
  description = "The ID of this internet gateway."
  value       = data.aws_internet_gateway.igw.id
}

#-------------------------------------------------------------------------------

output "nacl" {
  description = "An object containing all data for this Network Access Control List (NACL)."
  value       = data.aws_network_acls.nacl
}

output "nacl_ids" {
  description = "List of all Network Access Control List (NACL) IDs in the VPC."
  value       = data.aws_network_acls.nacl.ids
}
