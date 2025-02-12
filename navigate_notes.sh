#!/bin/bash

# Répertoire des fichiers HTML
HTML_DIR="$HOME/notes_app/html"

# Lister les fichiers HTML disponibles
html_files=($(ls "$HTML_DIR"))

# Afficher les fichiers HTML et demander à l'utilisateur de sélectionner celui à ouvrir
echo "Sélectionnez la note à ouvrir:"
select html_file in "${html_files[@]}"; do
    if [[ -n "$html_file" ]]; then
        xdg-open "$HTML_DIR/$html_file"
        echo "Ouverture de '$html_file'"
    else
        echo "Sélection non valide"
    fi
done
