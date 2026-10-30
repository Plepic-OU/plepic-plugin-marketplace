#!/usr/bin/env bash
# Usage: until-green.sh "<test command>" [max rounds, default 5]
set -uo pipefail

test_command="$1"
max_rounds="${2:-5}"
output_file="$(mktemp)"

for round in $(seq 1 "$max_rounds"); do
  if bash -c "$test_command" >"$output_file" 2>&1; then
    echo "green after $((round - 1)) fix round(s)"
    exit 0
  fi

  echo "round $round: red, Claude is fixing"
  claude -p "Make this command pass: $test_command
Change the code under test. Never change the tests the command runs.
Last 60 lines of its output:
$(tail -n 60 "$output_file")" \
    --permission-mode acceptEdits \
    --allowedTools "Read,Edit,Write,Glob,Grep,Bash($test_command)"
done

if bash -c "$test_command" >"$output_file" 2>&1; then
  echo "green after $max_rounds fix round(s)"
  exit 0
fi

tail -n 20 "$output_file"
echo "still red after $max_rounds fix round(s)"
exit 1
