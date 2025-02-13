#!/bin/bash

# Directory of notes and HTML files
NOTES_DIR="$HOME/notes_app/notes"
HTML_DIR="$HOME/notes_app/html"

# Convert each Markdown file to HTML
for note in "$NOTES_DIR"/*.md; do
    filename=$(basename "$note" .md)
    pandoc "$note" -o "$HTML_DIR/$filename.html"
done

echo "Conversion complete. The HTML files are in $HTML_DIR"
