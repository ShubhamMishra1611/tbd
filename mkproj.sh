mkproj() {
    local name="${1:?Project name is required}"
    
    # 1. Create and navigate to the project folder
    mkdir -p "$name" && cd "$name" || return
    
    # 2. Set up folders and files
    mkdir -p data notebooks src tests logs
    
    # Create files with some initial content
    cat << EOF > README.md
# ${name}

## Project Setup

1. Create virtual environment:
   python3 -m venv .venv
   source .venv/bin/activate

2. Install dependencies:
   pip install -r requirements.txt
EOF

    cat << EOF > requirements.txt
numpy
pandas
matplotlib
scikit-learn
EOF

    cat << EOF > main.py
def main():
    print("Hello World")

if __name__ == "__main__":
    main()
EOF

    # 3. Initialize Python virtual environment
    python3 -m venv .venv
    
    # 4. Optionally open in VS Code if available
    if command -v code &> /dev/null; then
        code .
    fi
    
    echo "Project $name created with default structure."
}