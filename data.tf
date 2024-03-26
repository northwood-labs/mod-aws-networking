# Expects a single VPC in the account, and will fail if there are none or more than one.
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc
data "aws_vpc" "default" {}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets
data "aws_subnets" "subnets" {
  filter {
    name = "vpc-id"
    values = [
      data.aws_vpc.default.id,
    ]
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet
data "aws_subnet" "subnet_int_a" {
  vpc_id            = data.aws_vpc.default.id
  availability_zone = "${data.aws_region.current.name}a"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet
data "aws_subnet" "subnet_int_b" {
  vpc_id            = data.aws_vpc.default.id
  availability_zone = "${data.aws_region.current.name}b"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet
data "aws_subnet" "subnet_int_c" {
  vpc_id            = data.aws_vpc.default.id
  availability_zone = "${data.aws_region.current.name}c"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route_table
data "aws_route_table" "route_table" {
  vpc_id = data.aws_vpc.default.id
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/internet_gateway
data "aws_internet_gateway" "default" {
  filter {
    name = "attachment.vpc-id"
    values = [
      data.aws_vpc.default.id,
    ]
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/network_acls
data "aws_network_acls" "default" {
  vpc_id = data.aws_vpc.default.id
}
