#!/bin/bash

# Répertoire des notes et des fichiers HTML
NOTES_DIR="$HOME/notes_app/notes"
HTML_DIR="$HOME/notes_app/html"

# Convertir chaque fichier Markdown en HTML
for note in "$NOTES_DIR"/*.md; do
    filename=$(basename "$note" .md)
    pandoc "$note" -o "$HTML_DIR/$filename.html"
done

echo "Conversion terminée. Les fichiers HTML sont dans $HTML_DIR"
