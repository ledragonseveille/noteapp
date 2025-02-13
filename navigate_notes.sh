#!/bin/bash

# HTML file directory
HTML_DIR="$HOME/notes_app/html"

# List available HTML files
html_files=($(ls "$HTML_DIR"))

# View HTML files and ask the user to select which one to open
echo "Select the note you want to open:"
select html_file in "${html_files[@]}"; do
    if [[ -n "$html_file" ]]; then
        xdg-open "$HTML_DIR/$html_file"
        echo "Opening of '$html_file'"
    else
        echo "Invalid selection"
    fi
done
