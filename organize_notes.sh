#!/bin/bash

# Notes and tags directory
NOTES_DIR="$HOME/notes_app/notes"
TAGS_DIR="$HOME/notes_app/tags"

# Ask for tag name
read -p "Tag Name: " tag

# Create the tag directory if it doesn't exist
mkdir -p "$TAGS_DIR/$tag"

# List available notes
notes=($(ls "$NOTES_DIR"))

# View notes and ask the user to select which ones to tag
echo "Select the notes to tag with '$tag':"
select note in "${notes[@]}"; do
    if [[ -n "$note" ]]; then
        ln -s "$NOTES_DIR/$note" "$TAGS_DIR/$tag/$note"
        echo "Note '$note' tagged with '$tag'"
    else
        echo "Invalid selection"
    fi
done
