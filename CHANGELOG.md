# CHANGELOG

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com), adheres to [Semantic Versioning](https://semver.org), and uses [Conventional Commit](https://www.conventionalcommits.org) syntax.

## Unreleased

### :books: Documentation

* [`5b06ed4`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/5b06ed48418bc103e2d968f84a3b74142e5930a2): Generate documentation in `README.md` ([@github-actions](https://github.com/github-actions))
* [`5ef20f9`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/5ef20f96f363e3cc07419fe0e696c3eeb09929a4): Updated the 'sales pitch' in the `README.md`. ([@skyzyx](https://github.com/skyzyx))
* [`7021bb1`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/7021bb173db4e28439754175c4498806f20aa321): Generate documentation in `README.md` ([@github-actions](https://github.com/github-actions))
* [`7c72b2e`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/7c72b2e13798292184563e49c2927af3e059a236): Generate the initial CHANGELOG. ([@skyzyx](https://github.com/skyzyx))

### :dependabot: Building and Dependencies

* [`efaa652`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/efaa6521a47980f216d9af91a2969878a1d51b57): Bump `actions/dependency-review-action` from 4.2.4 to 4.2.5 ([#1](https://github.com/northwood-labs/mod-aws-networking/issues/1)) ([@dependabot](https://github.com/dependabot))
* [`842753f`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/842753fb49864999bb1d13283ff2653b1128bd6c): **deps**: Bump `trufflesecurity/trufflehog` from 3.71.0 to 3.73.0 ([#8](https://github.com/northwood-labs/mod-aws-networking/issues/8)) ([@dependabot](https://github.com/dependabot))
* [`ddffa09`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/ddffa09b31abd2bfff52afdf3828055311f25eb8): **deps**: Bump `aquasecurity/trivy-action` from 0.18.0 to 0.19.0 ([#4](https://github.com/northwood-labs/mod-aws-networking/issues/4)) ([@dependabot](https://github.com/dependabot))
* [`942f030`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/942f0302bd6ac1c06cdcd3a8ea4961a2cb3f4974): **deps**: Bump `github/codeql-action` from 3.24.9 to 3.24.10 ([#7](https://github.com/northwood-labs/mod-aws-networking/issues/7)) ([@dependabot](https://github.com/dependabot))
* [`ef2ef6e`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/ef2ef6ec0f579ca7ef3582b611dd9a128d4d871f): **deps**: Bump `actions/checkout` from 4.1.2 to 4.1.6 ([#27](https://github.com/northwood-labs/mod-aws-networking/issues/27)) ([@dependabot](https://github.com/dependabot))
* [`bb2fad0`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/bb2fad0838b45acf1490c0c7085df8aba6438c7b): **deps**: Bump `github/codeql-action` from 3.24.10 to 3.25.5 ([#26](https://github.com/northwood-labs/mod-aws-networking/issues/26)) ([@dependabot](https://github.com/dependabot))
* [`2d4e44d`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/2d4e44d10727b0fcdc07dc51cfbb7c55a81cc9ee): **deps**: Bump `google/osv-scanner` from 1.7.1 to 1.7.3 ([#24](https://github.com/northwood-labs/mod-aws-networking/issues/24)) ([@dependabot](https://github.com/dependabot))
* [`322fd29`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/322fd29990140e5734cd5201a03a5cd83d8d72cc): **deps**: Bump `the` go_modules group with 2 updates ([#21](https://github.com/northwood-labs/mod-aws-networking/issues/21)) ([@dependabot](https://github.com/dependabot))
* [`60fb1fe`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/60fb1fe262ebf4eec508b1e399f2dbda53a9d270): **deps**: Bump `github.com/gruntwork-io/terratest` ([#18](https://github.com/northwood-labs/mod-aws-networking/issues/18)) ([@dependabot](https://github.com/dependabot))
* [`3aacd71`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/3aacd71f23986249c423f22cc58f901521e3491a): **deps**: Bump `actions/upload-artifact` from 4.3.1 to 4.3.3 ([#15](https://github.com/northwood-labs/mod-aws-networking/issues/15)) ([@dependabot](https://github.com/dependabot))

### :test_tube: Testing

* [`fd1b704`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/fd1b7046f98c498ec85da0f8f8ca79c49f8d8cd4): Update testing script. ([@skyzyx](https://github.com/skyzyx))
* [`48c3d4e`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/48c3d4e15ad458416f7804de6d0d4d52680f10df): Update hardening to allow EC2 endpoints. ([@skyzyx](https://github.com/skyzyx))
* [`988a2b0`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/988a2b0826d7282018bb237266d03d7e458296cf): Add Trivy security scan. ([@skyzyx](https://github.com/skyzyx))
* [`5d8993f`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/5d8993f522ac05b869c8adde74657d97930dc859): Allow Trivy scan to contact ghcr.io. ([@skyzyx](https://github.com/skyzyx))
* [`a3264a4`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/a3264a4ea499a3566834ee37d5df9d3ae1135f2d): Allow Trivy scan to contact pkg-containers.githubusercontent.com. ([@skyzyx](https://github.com/skyzyx))
* [`5ac2f2c`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/5ac2f2cbbd2375464d2d87bda266bcb5e112b393): Update hardening for Markdownlint and Terraform-Docs. ([@skyzyx](https://github.com/skyzyx))
* [`737f0ec`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/737f0ec6fa0520fcc6a6c8c068c701ab8345710b): Add Trivy license scan. ([@skyzyx](https://github.com/skyzyx))

### :tractor: Refactor

* [`1016c5e`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/1016c5e7cf5666b24ff226d81f0b5c0470e643f9): Tweaked the naming of some of the resources. ([@skyzyx](https://github.com/skyzyx))

### <!-- 0 -->:rocket: Features

* [`5503847`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/55038470a1bd87a2c9f6568ca05ece18593bc349): Initial commit ([@skyzyx](https://github.com/skyzyx))

### <!-- 1 -->:bug: Bug Fixes

* [`996dc1d`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/996dc1d4fe61bb6c53c5dd769961c913e551e5be): First working version. ([@skyzyx](https://github.com/skyzyx))

### <!-- ZZZ -->:gear: Miscellaneous Tasks

* [`a2f5a7c`](https://github.com/northwood-labs/terraform-provider-corefunc/commit/a2f5a7cf10ab6c684ea640baa8d27b457373e760): Harden GitHub Actions ([#2](https://github.com/northwood-labs/mod-aws-networking/issues/2)) ([@step-security-bot](https://github.com/step-security-bot))

<p>Generated on 2024-06-18.</p>
