#!/usr/bin/env bash
set -euo pipefail

export AWS_CSM_ENABLED=true
export AWS_CSM_HOST=127.0.0.1
export AWS_CSM_PORT=10080

# Run background process to collect data from AWS tools.
IAMLIVE_PID=$(
    iamlive \
        --provider=aws \
        --set-ini \
        --output-file "${PWD}/required-permissions.policy.json" \
        --background \
        --refresh-rate 1 \
        --sort-alphabetical \
        ;
)

# Run the tests.
go test -v ./... -count 1 -timeout 30m -parallel 1
readonly TESTRESULT=${PIPESTATUS[0]}

# Disable IAMLIVE and write to disk.
kill "${IAMLIVE_PID}"
unset AWS_CSM_ENABLED AWS_CSM_HOST AWS_CSM_PORT IAMLIVE_PID ACCOUNT_ID

sleep 3

exit "${TESTRESULT}"
