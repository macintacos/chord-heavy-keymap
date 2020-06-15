#!/usr/bin/env bash

file="$1"

jq --slurp --raw-input --raw-output \
  'split("\n") | .[1:] | map(split(",")) |
  map({"command": .[0],
       "key": .[1],
       "mac": .[2],
       "when": .[3]})' <"$file" |
  sed 's/\\r//g' | rg -v '("mac": ""|"when": "")' >temp.json

sed "s/\+comma/\+,/g" "temp.json" | pbcopy

echo "Converted CSV to JSON successfully, it has been copied to your clipboard."
