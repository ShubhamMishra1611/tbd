function mkproj {
    param (
        [Parameter(Mandatory=$true)]
        [string]$Name
    )
    
    # 1. Create and navigate to the project folder
    New-Item -ItemType Directory -Path $Name -Force | Out-Null
    Set-Location -Path $Name
    
    # 2. Set up folders and files
    # Create directories one by one
    New-Item -ItemType Directory -Path "data" -Force | Out-Null
    New-Item -ItemType Directory -Path "notebooks" -Force | Out-Null
    New-Item -ItemType Directory -Path "logs" -Force | Out-Null
    New-Item -ItemType Directory -Path "src" -Force | Out-Null
    New-Item -ItemType Directory -Path "tests" -Force | Out-Null
    
    # Create files individually
    New-Item -ItemType File -Path "README.md" -Force | Out-Null
    New-Item -ItemType File -Path "requirements.txt" -Force | Out-Null
    New-Item -ItemType File -Path "main.py" -Force | Out-Null
    New-Item -ItemType File -Path "config.yaml" -Force | Out-Null
    New-Item -ItemType File -Path ".env" -Force | Out-Null
    New-Item -ItemType File -Path "src/model.py" -Force | Out-Null
    New-Item -ItemType File -Path "src/train.py" -Force | Out-Null
    New-Item -ItemType File -Path "src/inference.py" -Force | Out-Null
    New-Item -ItemType File -Path "src/test.py" -Force | Out-Null
    New-Item -ItemType File -Path "src/utils.py" -Force | Out-Null
    
    # Create README.md content
    @"
# $Name

## Project Setup

1. Create virtual environment:
   python -m venv .venv
   .venv\Scripts\activate

2. Install dependencies:
   pip install -r requirements.txt
"@ | Set-Content README.md

    # Create requirements.txt content
    @"
numpy
pandas
matplotlib
scikit-learn
"@ | Set-Content requirements.txt

    # Create main.py content
    @"
def main():
    print("Hello World!")

if __name__ == "__main__":
    main()
"@ | Set-Content main.py
    
    # 3. Initialize Python virtual environment
    python -m venv .venv
    
    # 4. Optionally open in VS Code if available
    if (Get-Command code -ErrorAction SilentlyContinue) {
        code .
    }
    
    Write-Output "Project $Name created with default structure."
}