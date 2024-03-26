terraform {
  required_version = ">= 1.6, < 2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.42"
    }
  }
}

module "networking" {
  source = "../../" # https://github.com/northwood-labs/mod-aws-networking.git?ref={tag}
}

/** EXAMPLE-ABOVE */
#-------------------------------------------------------------------------------

# tflint-ignore: terraform_documented_outputs
output "vpc" {
  value = module.networking.vpc
}

# tflint-ignore: terraform_documented_outputs
output "vpc_arn" {
  value = module.networking.vpc_arn
}

# tflint-ignore: terraform_documented_outputs
output "vpc_cidr" {
  value = module.networking.vpc_cidr
}

# tflint-ignore: terraform_documented_outputs
output "vpc_id" {
  value = module.networking.vpc_id
}

# tflint-ignore: terraform_documented_outputs
output "subnet_ids" {
  value = module.networking.subnet_ids
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_a" {
  value = module.networking.subnet_int_a
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_a_arn" {
  value = module.networking.subnet_int_a_arn
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_a_id" {
  value = module.networking.subnet_int_a_id
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_a_zone" {
  value = module.networking.subnet_int_a_zone
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_a_zone_id" {
  value = module.networking.subnet_int_a_zone_id
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_a_cidr" {
  value = module.networking.subnet_int_a_cidr
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_b" {
  value = module.networking.subnet_int_b
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_b_arn" {
  value = module.networking.subnet_int_b_arn
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_b_id" {
  value = module.networking.subnet_int_b_id
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_b_zone" {
  value = module.networking.subnet_int_b_zone
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_b_zone_id" {
  value = module.networking.subnet_int_b_zone_id
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_b_cidr" {
  value = module.networking.subnet_int_b_cidr
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_c" {
  value = module.networking.subnet_int_c
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_c_arn" {
  value = module.networking.subnet_int_c_arn
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_c_id" {
  value = module.networking.subnet_int_c_id
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_c_zone" {
  value = module.networking.subnet_int_c_zone
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_c_zone_id" {
  value = module.networking.subnet_int_c_zone_id
}

# tflint-ignore: terraform_documented_outputs
output "subnet_int_c_cidr" {
  value = module.networking.subnet_int_c_cidr
}

# tflint-ignore: terraform_documented_outputs
output "route_table" {
  value = module.networking.route_table
}

# tflint-ignore: terraform_documented_outputs
output "route_table_arn" {
  value = module.networking.route_table_arn
}

# tflint-ignore: terraform_documented_outputs
output "route_table_id" {
  value = module.networking.route_table_id
}

# tflint-ignore: terraform_documented_outputs
output "internet_gateway" {
  value = module.networking.internet_gateway
}

# tflint-ignore: terraform_documented_outputs
output "internet_gateway_arn" {
  value = module.networking.internet_gateway_arn
}

# tflint-ignore: terraform_documented_outputs
output "internet_gateway_id" {
  value = module.networking.internet_gateway_id
}

# tflint-ignore: terraform_documented_outputs
output "nacl" {
  value = module.networking.nacl
}

# tflint-ignore: terraform_documented_outputs
output "nacl_ids" {
  value = module.networking.nacl_ids
}
