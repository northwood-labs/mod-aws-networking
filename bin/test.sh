#!/usr/bin/env bash
set -euo pipefail

# Run the tests.
go test -v ./... -count 1 -timeout 30m -parallel 1
readonly TESTRESULT=${PIPESTATUS[0]}

sleep 3

exit "${TESTRESULT}"
