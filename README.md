# mkproj

`mkproj` is a script for quickly creating and initializing Python projects with a default folder structure. It supports both **Bash** and **PowerShell**, making it hyper versatile across different environments.🤣

---

## Features

- Creates a new project directory with a default structure:
  ```
  .
  ├── data/
  ├── logs/
  ├── notebooks/
  ├── src/
  ├── tests/
  ├── README.md
  ├── requirements.txt
  ├── main.py
  └── .venv/ (Python virtual environment)
  ```
- Pre-fills `README.md` with setup instructions.
- Adds a `requirements.txt` with common ML libraries.
- Optionally opens the project in Visual Studio Code if installed.

---

## Installation

### For Bash

1. Copy the `mkproj` function from `mkproj.sh` into your `~/.bashrc` (or `~/.zshrc` for Zsh):
    ```bash
    source /path/to/mkproj.sh
    ```

2. Reload the shell configuration:
    ```bash
    source ~/.bashrc
    ```

3. Now, you can use the `mkproj` command.

### For PowerShell

1. Copy the `mkproj` function from `mkproj.ps1` into your PowerShell profile:
    ```powershell
    . $HOME\Documents\WindowsPowerShell\mkproj.ps1
    ```

2. Reload the PowerShell profile:
    ```powershell
    . $PROFILE
    ```

3. Now, you can use the `mkproj` command.

---

## Usage

Run the following command to create a new project:
```bash
mkproj <project-name>
```

Example:
```bash
mkproj MyPythonProject
```

This will:
1. Create a folder structure as shown above.
2. Initialize a Python virtual environment in `.venv`.
3. Add `README.md`, `requirements.txt`, and `main.py` with default content.
4. Optionally open the folder in Visual Studio Code if available.

---

## Default Dependencies

The `requirements.txt` includes:
```text
numpy
pandas
matplotlib
scikit-learn
```

---
