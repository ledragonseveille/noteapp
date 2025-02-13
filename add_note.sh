#!/bin/bash

# Notes folder
NOTES_DIR="$HOME/notes_app/notes"

# Ask for the note's title
read -p "Note title: " title

# Replace spaces by underscores for the file's name
filename=$(echo "$title" | tr ' ' '_').md

# Complete path of the note file
filepath="$NOTES_DIR/$filename"

# Obtain current date
current_date=$(date +"%Y-%m-%d %H:%M:%S")

# Insert the timestamp at the beginning of the note file
echo "Date: $current_date" > "$filepath"

# Open the default editor to write the note
${EDITOR:-vim} "$filepath"

echo "Note added: $filepath"
