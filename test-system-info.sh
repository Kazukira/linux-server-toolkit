#!/usr/bin/env bash

set -euo pipefail

check_disk_usage() {
    local disk_usage="$1"

    if (( disk_usage >= 80 )); then
        echo "WARNING"
    else
        echo "OK"
    fi
}

test_case() {
    local input="$1"
    local expected="$2"
    local actual

    actual=$(check_disk_usage "$input")

    if [[ "$actual" == "$expected" ]]; then
        echo "PASS: ${input}% -> ${actual}"
    else
        echo "FAIL: ${input}% -> expected ${expected}, got ${actual}"
        return 1
    fi
}

test_case 21 OK
test_case 79 OK
test_case 80 WARNING
test_case 95 WARNING

echo "All tests passed."
