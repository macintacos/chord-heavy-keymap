#!/usr/bin/env bash

CURRENT_DIRECTORY="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STAGE_ONE="$CURRENT_DIRECTORY"/stage_01.csv
STAGE_TWO="$CURRENT_DIRECTORY"/stage_02.csv
STAGE_THREE="$CURRENT_DIRECTORY"/stage_03.csv
STAGE_FOUR="$CURRENT_DIRECTORY"/stage_04.json
STAGE_FIVE="$CURRENT_DIRECTORY"/stage_05.json
STAGE_SIX="$CURRENT_DIRECTORY"/stage_06.json

jq --raw-output '.[] | [.command,.key,.mac,.when] | @csv' \
    "$HOME/Library/Application Support/Code/User/keybindings.json" >"$STAGE_ONE"

# Add the headers
awk 'BEGIN{print "command,key,mac,when"}{print}' "$STAGE_ONE" >"$STAGE_TWO"

# Parse line by line so that we can edit things properly
index=0
while IFS= read -r line; do
    index=$((index + 1))
    if [[ $index -eq 1 ]]; then
        echo "$line" >"$STAGE_THREE"
        continue
    fi

    # We want "," values to be switched to the word "comma" because it gets mangled in the CSV format.
    comma_modifier="cmd+comma comma" # complex one first because then it's harder to fix it
    new_line="${line/cmd+, ,/$comma_modifier}"
    comma_modifier_simple="cmd+comma"
    new_new_line="${new_line/cmd+,/$comma_modifier_simple}"

    # Split the line up on the comma
    IFS=',' read -r -a split_row_array <<<"$new_new_line"

    # Separating them out, copying values before changing them
    current_command=${split_row_array[0]}
    current_key=${split_row_array[1]}
    converted_mac=${split_row_array[1]}
    current_when=${split_row_array[3]}

    # We want "key" to have the "ctrl" values, not "cmd"
    key_modifier="ctrl"
    current_key_converted="${current_key/cmd/$key_modifier}"

    # Now we can pass in the new values; comma separated!
    echo "$current_command,$current_key_converted,$converted_mac,$current_when" >>"$STAGE_THREE"
done <"$STAGE_TWO"

# Now we can finally convert the csv back to JSON, like we need
jq --raw-input --slurp --raw-output \
    'split("\n") | .[1:] | map(split(",")) |
  map({"command": .[0],
       "key": .[1],
       "mac": .[2],
       "when": .[3]})' <"$STAGE_THREE" |
    sed 's/\\r//g' | rg -v '("mac": ""|"when": "")' >"$STAGE_FOUR"

sed -E "s/\+comma/\+,/g" "$STAGE_FOUR" |
    sed -E 's/\\"//g' >"$STAGE_FIVE"

echo "Formatting file we've created before doing anything else..." && prettier --write "$STAGE_FIVE"
jq 'del(.[-1])' "$STAGE_FIVE" >"$STAGE_SIX"

cat "$STAGE_SIX"

# Clean up after yourself
rm -f "$STAGE_ONE" "$STAGE_TWO" "$STAGE_THREE" "$STAGE_FOUR" "$STAGE_FIVE" "$STAGE_SIX"
