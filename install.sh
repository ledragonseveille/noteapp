#!/bin/bash

# Installation directory
INSTALL_DIR="$HOME/notes_app"

# Create the necessary directories
mkdir -p "$INSTALL_DIR/notes"
mkdir -p "$INSTALL_DIR/tags"
mkdir -p "$INSTALL_DIR/html"

# Copy scripts to the installation directory
cp add_note.sh "$INSTALL_DIR"
cp organize_notes.sh "$INSTALL_DIR"
cp convert_to_html.sh "$INSTALL_DIR"
cp navigate_notes.sh "$INSTALL_DIR"

echo "Installation complete. The scripts are installed in $INSTALL_DIR"
