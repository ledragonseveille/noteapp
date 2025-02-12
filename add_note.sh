#!/bin/bash

# Répertoire des notes
NOTES_DIR="$HOME/notes_app/notes"

# Demander le titre de la note
read -p "Titre de la note: " title

# Remplacer les espaces par des underscores pour le nom de fichier
filename=$(echo "$title" | tr ' ' '_').md

# Chemin complet du fichier de note
filepath="$NOTES_DIR/$filename"

# Obtenir la date actuelle
current_date=$(date +"%Y-%m-%d %H:%M:%S")

# Insérer l'horodatage au début du fichier de note
echo "Date: $current_date" > "$filepath"

# Ouvrir l'éditeur par défaut pour écrire la note
${EDITOR:-vim} "$filepath"

echo "Note ajoutée: $filepath"
