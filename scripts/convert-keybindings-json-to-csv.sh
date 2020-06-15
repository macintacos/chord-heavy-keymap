#!/usr/bin/env bash

jq --raw-output '.[] | [.command,.key,.when] | @csv' "$HOME/Library/Application Support/Code/User/keybindings.json" > current_keybindings_json.csv
