<div align="center"><img src="https://github.com/northwood-labs/mod-template/raw/main/tofu-modules-lightmode.png#gh-light-mode-only" alt="Seal of Approval" width="500"><img src="https://github.com/northwood-labs/mod-template/raw/main/tofu-modules-darkmode.png#gh-dark-mode-only" alt="Seal of Approval" width="500"><br></div>

---

# {NAME OF MODULE}

[![AWS](https://img.shields.io/badge/AWS-232f3e.svg?logoColor=ffffff&style=for-the-badge&logo=amazonaws)][aws]
[![Terraform](https://img.shields.io/badge/Terraform-623ce4.svg?logoColor=ffffff&style=for-the-badge&logo=terraform)][terraform]
[![OpenTofu](https://img.shields.io/badge/OpenTofu-ffda18.svg?logoColor=171e21&style=for-the-badge&logo=opentofu)][opentofu]
[![Golang](https://img.shields.io/badge/Go-00add8.svg?logoColor=ffffff&style=for-the-badge&logo=go)][golang]
[![Node.js](https://img.shields.io/badge/Node.js-339933.svg?logoColor=ffffff&style=for-the-badge&logo=node.js)][node.js]

{DESCRIPTION}

| Information            | Description   |
|------------------------|---------------|
| **Terraform Versions** | 1.6, 1.7, 1.8 |
| **OpenTofu Versions**  | 1.6, 1.7      |

## Features

* Designed to be highly _composable_, and has no hard-dependencies on other modules.

{OTHER BULLET POINTS}

## Examples

More examples can be found in the `./examples` directory.

```hcl
{EXAMPLE}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Provider | Version |
|------|----------|---------|
| `terraform` | | `~> 1.6` |
| `aws` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) | `~> 5.0` |

## Inputs

| Req | Variable | Type | Description | Default |
|:---:|----------|------|-------------|---------|

## Outputs

| Name | Description |
|------|-------------|

## Resources

| Kind | Source | Name | Provider |
|------|--------|------|----------|
| data source | [`data.aws_caller_identity`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | `current` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) |
| data source | [`data.aws_region`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | `current` | [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) |
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
