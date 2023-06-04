#!/bin/bash

input="$(</dev/stdin)"
output="$(echo -e "$input" | sed -E 's/^[[:space:]]*//g; s/[[:space:]]*$//g' | sed -z 's/-\n//g; s/\n/ /g;')"
echo "$output"
