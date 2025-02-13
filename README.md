# Notes Manager

Notes Manager is a command-line application for taking notes in Markdown format, organizing them with tags, converting them to HTML, and navigating through HTML notes.

## Prerequisites

- Bash
- [Pandoc](https://pandoc.org/installing.html) for Markdown to HTML conversion

## Installation

1. Clone the repository to your local directory:
    ```bash
    git clone <REPOSITORY_URL>
    cd <REPOSITORY_NAME>
    ```

2. Make the scripts executable:
    ```bash
    chmod +x install.sh add_note.sh organize_notes.sh convert_to_html.sh navigate_notes.sh notes_manager.sh
    ```

3. Run the installation script:
    ```bash
    ./install.sh
    ```

## Usage

### Add a new note

To add a new note, use the `-a` or `--add` option:
```bash
./notes_manager.sh --add
```

### Organize notes with tags

To organize notes with tags, use the `-o` or `--organize` option:
```bash
./notes_manager.sh --organize
```

### Convert notes to HTML

To convert notes to HTML, use the `-c` or `--convert` option:
```bash
./notes_manager.sh --convert
```

### Navigate through HTML notes

To navigate through HTML notes, use the `-n` or `--navigate` option:
```bash
./notes_manager.sh --navigate
```

### Display files corresponding to a given tag

To display files corresponding to a given tag, use the `-t` or `--tag` option:
```bash
./notes_manager.sh --tag
```

## Contribution

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository.
2. Create a branch for your feature (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
