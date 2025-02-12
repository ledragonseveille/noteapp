#!/bin/bash

# Répertoire d'installation
INSTALL_DIR="$HOME/notes_app"

# Afficher l'aide
function show_help {
    echo "Usage: $0 [option]"
    echo "Options:"
    echo "  -a, --add          Ajouter une nouvelle note"
    echo "  -o, --organize     Organiser les notes avec des tags"
    echo "  -c, --convert      Convertir les notes en HTML"
    echo "  -n, --navigate     Naviguer dans les notes HTML"
    echo "  -t, --tag          Afficher les fichiers correspondant à un tag donné"
    echo "  -h, --help         Afficher cette aide"
}

# Afficher les fichiers correspondant à un tag donné
function list_files_by_tag {
    read -p "Nom du tag: " tag
    TAG_DIR="$INSTALL_DIR/tags/$tag"
    if [ -d "$TAG_DIR" ]; then
        echo "Fichiers tagués avec '$tag':"
        ls "$TAG_DIR"
    else
        echo "Aucun fichier trouvé pour le tag '$tag'"
    fi
}

# Vérifier les options
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
