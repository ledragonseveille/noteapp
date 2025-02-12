#!/bin/bash

# Répertoire d'installation
INSTALL_DIR="$HOME/notes_app"

# Créer les répertoires nécessaires
mkdir -p "$INSTALL_DIR/notes"
mkdir -p "$INSTALL_DIR/tags"
mkdir -p "$INSTALL_DIR/html"

# Copier les scripts dans le répertoire d'installation
cp add_note.sh "$INSTALL_DIR"
cp organize_notes.sh "$INSTALL_DIR"
cp convert_to_html.sh "$INSTALL_DIR"
cp navigate_notes.sh "$INSTALL_DIR"

echo "Installation terminée. Les scripts sont installés dans $INSTALL_DIR"
