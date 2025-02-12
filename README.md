# Notes Manager

Notes Manager est une application en ligne de commande permettant de prendre des notes en format Markdown, de les organiser avec des tags, de les convertir en HTML et de naviguer dans les notes HTML.

## Prérequis

- Bash
- [Pandoc](https://pandoc.org/installing.html) pour la conversion Markdown en HTML

## Installation

1. Clonez le dépôt dans votre répertoire local :
    ```bash
    git clone <URL_DU_DEPOT>
    cd <NOM_DU_DEPOT>
    ```

2. Rendez les scripts exécutables :
    ```bash
    chmod +x install.sh add_note.sh organize_notes.sh convert_to_html.sh navigate_notes.sh notes_manager.sh
    ```

3. Exécutez le script d'installation :
    ```bash
    ./install.sh
    ```

## Utilisation

### Ajouter une nouvelle note

Pour ajouter une nouvelle note, utilisez l'option `-a` ou `--add` :
```bash
./notes_manager.sh --add
```

### Organiser les notes avec des tags

Pour organiser les notes avec des tags, utilisez l'option `-o` ou `--organize` :
```bash
./notes_manager.sh --organize
```

### Convertir les notes en HTML

Pour convertir les notes en HTML, utilisez l'option `-c` ou `--convert` :
```bash
./notes_manager.sh --convert
```

### Naviguer dans les notes HTML

Pour naviguer dans les notes HTML, utilisez l'option `-n` ou `--navigate` :
```bash
./notes_manager.sh --navigate
```

### Afficher les fichiers correspondant à un tag donné

Pour afficher les fichiers correspondant à un tag donné, utilisez l'option `-t` ou `--tag` :
```bash
./notes_manager.sh --tag
```

## Contribution

Les contributions sont les bienvenues ! Veuillez suivre les étapes suivantes pour contribuer :

1. Forkez le dépôt.
2. Créez une branche pour votre fonctionnalité (`git checkout -b feature/AmazingFeature`).
3. Commitez vos modifications (`git commit -m 'Add some AmazingFeature'`).
4. Poussez vers la branche (`git push origin feature/AmazingFeature`).
5. Ouvrez une Pull Request.

## Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.
