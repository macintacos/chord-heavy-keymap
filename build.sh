#!/usr/bin/env bash

CURRENT_DIRECTORY="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SPONGE_FILE="$CURRENT_DIRECTORY"/tmp.txt
TEMP_FILE_FOR_BLOCK="$CURRENT_DIRECTORY"/tmp_1.txt

# Setting up proper logging
function log() {
    timestamp=$(date -u '+%Y-%m-%dT%H:%M:%S%z')

    COLOR_RED=$'\e[1;31m'
    COLOR_GRN=$'\e[1;32m'
    COLOR_YEL=$'\e[1;33m'
    COLOR_BLU=$'\e[1;34m'
    COLOR_MAG=$'\e[1;35m'
    COLOR_END=$'\e[0m'

    case $1 in
    ok)
        level="OK"
        color_level="${COLOR_GRN}${level}${COLOR_END}"
        ;;
    debug)
        level="DEBUG"
        color_level="${COLOR_MAG}${level}${COLOR_END}"
        ;;
    info)
        level="INFO"
        color_level="${COLOR_BLU}${level}${COLOR_END}"
        ;;
    warn)
        level="WARN"
        color_level="${COLOR_YEL}${level}${COLOR_END}"
        ;;
    error)
        level="ERROR"
        color_level="${COLOR_RED}${level}${COLOR_END}"
        ;;
    *)
        echo 'Logger level not specified!'
        exit 1
        ;;
    esac

    function write() {
        printf "%s %-17s %s\n" "$timestamp" "$color_level" "${@}"
    }

    write "$(
        shift 1
        echo "${*}"
    )"
}

# Gather current user settings
log info "Gathering current user settings..."
jq --raw-output '.[] | [.command,.key,.mac,.when] | @csv' \
    "$HOME/Library/Application Support/Code/User/keybindings.json" | sponge "$SPONGE_FILE"

# Add the headers
log info "Adding headers to output CSV..."
awk 'BEGIN{print "command,key,mac,when"}{print}' "$SPONGE_FILE" | sponge "$TEMP_FILE_FOR_BLOCK"

# Parse line by line so that we can edit things properly
log info "Compiling and converting your keymap for distribution (this may take a while)..."
index=0
while IFS= read -r line; do
    index=$((index + 1))
    if [[ $index -eq 1 ]]; then
        echo "$line" >"$SPONGE_FILE"
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
    current_key_converted=$(sed -E "s/cmd/$key_modifier/g" <<<"$current_key")
    # current_key_converted="${current_key/cmd/$key_modifier}"

    # Now we can pass in the new values; comma separated!
    echo "$current_command,$current_key_converted,$converted_mac,$current_when" >>"$SPONGE_FILE"
done <"$TEMP_FILE_FOR_BLOCK"
log ok "Done."

# Now we can finally convert the csv back to JSON, which is what is needed for the extension
log info "Converting temp file to JSON for the purposes of editing the package.json..."
jq --raw-input --slurp --raw-output \
    'split("\n") | .[1:] | map(split(",")) |
  map({"command": .[0],
       "key": .[1],
       "mac": .[2],
       "when": .[3]})' <"$SPONGE_FILE" |
    sed 's/\\r//g' | rg -v '("mac": ""|"when": "")' | sponge "$SPONGE_FILE"
log ok "Done."

# Here's where we get rid of the "comma" values, and remove some escaped characters
log info "Fixing values that needed to be converted because CSV is bad..."
sed -E "s/\+comma/\+,/g" "$SPONGE_FILE" |
    sed -E 's/\\"//g' | sponge "$SPONGE_FILE"

log info "Running Prettier on the file to validate json..."
prettier --write --parser json "$SPONGE_FILE"

# Removing the last null value in the array because for some reason it's there
log info "Removing a null value that was introduced because CSV is bad..."
jq 'del(.[-1])' "$SPONGE_FILE" | sponge "$SPONGE_FILE"

log info "Editing package.json in place, replacing it with the array of objects that we have now"
# shellcheck disable=SC2086
jq --argjson gatheredKeybindings "$(<$SPONGE_FILE)" '.contributes.keybindings = $gatheredKeybindings' \
    "package.json" |
    sponge "package.json"
log ok "Done."

# Clean up after yourself
log info "Cleaning up after ourselves..."
rm -f "$SPONGE_FILE" "$TEMP_FILE_FOR_BLOCK"

log ok "Conversion completed. Feel free to inspect package.json for any anomalies."
