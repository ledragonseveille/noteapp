#!/bin/bash

# Répertoire des notes et des tags
NOTES_DIR="$HOME/notes_app/notes"
TAGS_DIR="$HOME/notes_app/tags"

# Demander le nom du tag
read -p "Nom du tag: " tag

# Créer le répertoire du tag s'il n'existe pas
mkdir -p "$TAGS_DIR/$tag"

# Lister les notes disponibles
notes=($(ls "$NOTES_DIR"))

# Afficher les notes et demander à l'utilisateur de sélectionner celles à taguer
echo "Sélectionnez les notes à taguer avec '$tag':"
select note in "${notes[@]}"; do
    if [[ -n "$note" ]]; then
        ln -s "$NOTES_DIR/$note" "$TAGS_DIR/$tag/$note"
        echo "Note '$note' taguée avec '$tag'"
    else
        echo "Sélection non valide"
    fi
done
