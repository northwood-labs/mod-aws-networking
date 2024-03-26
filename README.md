<div align="center"><img src="https://github.com/northwood-labs/mod-template/raw/main/tofu-modules-lightmode.png#gh-light-mode-only" alt="Seal of Approval" width="500"><img src="https://github.com/northwood-labs/mod-template/raw/main/tofu-modules-darkmode.png#gh-dark-mode-only" alt="Seal of Approval" width="500"><br></div>

---

# AWS Networking

[![AWS](https://img.shields.io/badge/AWS-232f3e.svg?logoColor=ffffff&style=for-the-badge&logo=amazonaws)][aws]
[![Terraform](https://img.shields.io/badge/Terraform-623ce4.svg?logoColor=ffffff&style=for-the-badge&logo=terraform)][terraform]
[![OpenTofu](https://img.shields.io/badge/OpenTofu-ffda18.svg?logoColor=171e21&style=for-the-badge&logo=opentofu)][opentofu]
[![Golang](https://img.shields.io/badge/Go-00add8.svg?logoColor=ffffff&style=for-the-badge&logo=go)][golang]
[![Node.js](https://img.shields.io/badge/Node.js-339933.svg?logoColor=ffffff&style=for-the-badge&logo=node.js)][node.js]

Simplifies the process of discovering AWS networking data for Northwood Labs resources.

| Information            | Description   |
|------------------------|---------------|
| **Terraform Versions** | 1.6, 1.7, 1.8 |
| **OpenTofu Versions**  | 1.6, 1.7      |

## Features

* Designed to be highly _composable_, and has no hard-dependencies on other modules.

* Outputs can be easily used with other modules which need network identifiers for VPCs and Subnets.

* Only looks-up data, but does not persist any data itself, making it completely stateless.

## Examples

More examples can be found in the `./examples` directory.

```hcl
# Load the module
module "aws_networking" {
  source = "https://github.com/northwood-labs/mod-aws-networking.git?ref={tag}"
}

resource "aws_lambda_function" "test_lambda" {
  function_name = var.lambda_function_name
  # other configuration...

  vpc_config {
    subnet_ids = module.aws_networking.subnet_ids
  }
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Provider | Version |
|------|----------|---------|
| `terraform` | | `~> 1.6` |
| `aws` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) | `~> 5.42` |

## Inputs

| Req | Variable | Type | Description | Default |
|:---:|----------|------|-------------|---------|

## Outputs

| Name | Description |
|------|-------------|
| `internet_gateway` | An object containing all data for this internet gateway. |
| `internet_gateway_arn` | The ARN of this internet gateway. |
| `internet_gateway_id` | The ID of this internet gateway. |
| `nacl` | An object containing all data for this Network Access Control List (NACL). |
| `nacl_ids` | List of all Network Access Control List (NACL) IDs in the VPC. |
| `route_table` | An object containing all data for this route table. |
| `route_table_arn` | The ARN of this route table. |
| `route_table_id` | The ID of this route table. |
| `subnet_ids` | List of all Subnet IDs in the VPC. |
| `subnet_int_a` | An object containing all data for subnet A. |
| `subnet_int_a_arn` | The ARN of subnet A. |
| `subnet_int_a_cidr` | The Availability Zone CIDR block of subnet A. |
| `subnet_int_a_id` | The ID of subnet A. |
| `subnet_int_a_zone` | The Availability Zone of subnet A. |
| `subnet_int_a_zone_id` | The Availability Zone ID of subnet A. |
| `subnet_int_b` | An object containing all data for subnet B. |
| `subnet_int_b_arn` | The ARN of subnet B. |
| `subnet_int_b_cidr` | The Availability Zone CIDR block of subnet B. |
| `subnet_int_b_id` | The ID of subnet B. |
| `subnet_int_b_zone` | The Availability Zone of subnet B. |
| `subnet_int_b_zone_id` | The Availability Zone ID of subnet B. |
| `subnet_int_c` | An object containing all data for subnet C. |
| `subnet_int_c_arn` | The ARN of subnet C. |
| `subnet_int_c_cidr` | The Availability Zone CIDR block of subnet C. |
| `subnet_int_c_id` | The ID of subnet C. |
| `subnet_int_c_zone` | The Availability Zone of subnet C. |
| `subnet_int_c_zone_id` | The Availability Zone ID of subnet C. |
| `vpc` | An object containing all VPC data. |
| `vpc_arn` | The ARN of the VPC in this account. |
| `vpc_cidr` | The CIDR of the VPC in this account. |
| `vpc_id` | The ID of the VPC in this account. |

## Resources

| Kind | Source | Name | Provider |
|------|--------|------|----------|
| data source | [`data.aws_caller_identity`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | `current` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) |
| data source | [`data.aws_internet_gateway`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/internet_gateway) | `igw` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) |
| data source | [`data.aws_network_acls`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/network_acls) | `nacl` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) |
| data source | [`data.aws_region`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | `current` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) |
| data source | [`data.aws_route_table`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route_table) | `route_table` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) |
| data source | [`data.aws_subnet`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | `subnet_int_a` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) |
| data source | [`data.aws_subnet`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | `subnet_int_b` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) |
| data source | [`data.aws_subnet`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | `subnet_int_c` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) |
| data source | [`data.aws_subnets`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | `subnets` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) |
| data source | [`data.aws_vpc`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | `vpc` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) |
<!-- END_TF_DOCS -->

## Testing

For integration tests, we use the [Terratest](https://github.com/gruntwork-io/terratest) testing framework. All of the building and testing dependencies are bundled-up as a Docker image, so see [northwood-labs/dev-env](https://github.com/northwood-labs/dev-env) before running these tests.

These tests create _real resources_, which cost _real money_.

```bash
make test
```

[aws]: https://aws.amazon.com
[golang]: https://go.dev
[node.js]: https://nodejs.org
[opentofu]: https://opentofu.org
[terraform]: https://developer.hashicorp.com/terraform
