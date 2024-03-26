# https://opentofu.org/docs/language/settings/
terraform {
  # goplicate-start:version
  required_version = "~> 1.6"
  # goplicate-end:version

  required_providers {
    # goplicate-start:aws
    # https://github.com/hashicorp/terraform-provider-aws/releases/latest
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.42"
    }
    # goplicate-end:aws
  }
}
