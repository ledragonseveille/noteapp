#!/bin/bash

# Installation directory
INSTALL_DIR="$HOME/notes_app"

# View Help
function show_help {
    echo "Usage: $0 [option]"
    echo "Options:"
    echo "  -a, --add          Add a new note"
    echo "  -o, --organize     Organize notes with tags"
    echo "  -c, --convert      Convert notes to HTML"
    echo "  -n, --navigate     Navigate HTML notes"
    echo "  -t, --tag          View files that match a given tag"
    echo "  -h, --help         View this help"
}

# View files that match a given tag
function list_files_by_tag {
    read -p "Tag Name: " tag
    TAG_DIR="$INSTALL_DIR/tags/$tag"
    if [ -d "$TAG_DIR" ]; then
        echo "Files tagged with '$tag':"
        ls "$TAG_DIR"
    else
        echo "No files found for the tag '$tag'"
    fi
}

# Check Options
case "$1" in
    -a|--add)
        "$INSTALL_DIR/add_note.sh"
        ;;
    -o|--organize)
        "$INSTALL_DIR/organize_notes.sh"
        ;;
    -c|--convert)
        "$INSTALL_DIR/convert_to_html.sh"
        ;;
    -n|--navigate)
        "$INSTALL_DIR/navigate_notes.sh"
        ;;
    -t|--tag)
        list_files_by_tag
        ;;
    -h|--help|*)
        show_help
        ;;
esac
