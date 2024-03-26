// Copyright 2023-2024, Northwood Labs
// Copyright 2023-2024, Ryan Parman <rparman@northwood-labs.com>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package test

import (
	"os"
	"runtime"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	test_structure "github.com/gruntwork-io/terratest/modules/test-structure"
	"github.com/hairyhenderson/go-which"
	"github.com/stretchr/testify/assert"
)

var (
	err error

	tmpDir = "./"
	binary = os.Getenv("TF_PATH")
)

func TestAwsResourceTags(t *testing.T) {
	// https://golang.org/pkg/testing/#T.Parallel
	t.Parallel()

	if binary == "" {
		binary = "terraform"
	}

	if os.Getenv("GITHUB_ACTIONS") != "true" {
		if _, err = os.Stat(which.Which(binary)); os.IsNotExist(err) {
			t.Fatalf("Binary %s must be installed first", binary)
		}
	}

	// https://pkg.go.dev/github.com/gruntwork-io/terratest/modules/terraform#Options
	terraformOptions := &terraform.Options{
		// The path to Terraform/OpenTofu.
		TerraformBinary: binary,

		// The path to where our Terraform code is located
		TerraformDir: tmpDir,

		// Disable colors in Terraform commands so its easier to parse stdout/stderr
		NoColor: true,

		// terraform init -upgrade
		Upgrade: true,

		// terraform init -reconfigure
		Reconfigure: true,

		// Set the maximum number of parallelism; equivalent to `nproc`.
		Parallelism: runtime.NumCPU(),
	}

	defer test_structure.RunTestStage(t, "destroy", func() {
		terraformOptions = test_structure.LoadTerraformOptions(t, tmpDir)
		terraform.Destroy(t, terraformOptions)
	})

	test_structure.RunTestStage(t, "tfapply", func() {
		terraform.InitAndApply(t, terraformOptions)
		test_structure.SaveTerraformOptions(t, tmpDir, terraformOptions)
	})

	test_structure.RunTestStage(t, "outputs", func() {
		terraformOptions := test_structure.LoadTerraformOptions(t, tmpDir)

		// Internet Gateway
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "internet_gateway_arn"),
			":internet-gateway/igw-",
		)
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "internet_gateway_id"),
			"igw-",
		)

		// Route Table
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "route_table_arn"),
			":route-table/rtb-",
		)
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "route_table_id"),
			"rtb-",
		)

		// Subnets
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "subnet_int_a_arn"),
			":subnet/subnet-",
		)
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "subnet_int_a_id"),
			"subnet-",
		)
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "subnet_int_b_arn"),
			":subnet/subnet-",
		)
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "subnet_int_b_id"),
			"subnet-",
		)
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "subnet_int_c_arn"),
			":subnet/subnet-",
		)
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "subnet_int_c_id"),
			"subnet-",
		)

		// VPC
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "vpc_arn"),
			":vpc/vpc-",
		)
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "vpc_id"),
			"vpc-",
		)
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "vpc_cidr"),
			"172.",
		)
		assert.Contains(t,
			terraform.Output(t, terraformOptions, "vpc_cidr"),
			"/16",
		)
	})
}
