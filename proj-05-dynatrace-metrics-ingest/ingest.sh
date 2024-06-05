#!/bin/bash
os_version=$(cat /etc/os-release | grep VERSION_ID | grep -o [0-9.]*)
test_var=$(echo $os_version"-1024")
echo "host.dynatrace_ingest_test,os_version_test=$test_var 0" | /opt/dynatrace/oneagent/agent/tools/dynatrace_ingest --verbose
