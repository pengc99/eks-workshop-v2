set -e

before() {
  echo "noop"
}

after() {
  sleep 10
  echo "get fluent-bit ds"
  if [[ $TEST_OUTPUT != *"daemonset.apps/aws-for-fluent-bit"* ]]; then
    echo "Failed to match expected output"
    echo $TEST_OUTPUT
    exit 1
  fi
}

"$@"