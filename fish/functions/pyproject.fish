function pyproject -d “Create a new Python project”
    if test (count $argv) -eq 0
        echo “Usage: pyproject <project_name>”
        return 1
    end
    
    set project_name $argv[1]
    mkdir -p $project_name
    cd $project_name
    
    uv init
    
    echo ".venv/
__pycache__/
*.py[cod]
.env
.DS_Store" > .gitignore
    
    git init
    
    echo “✓ Project $project_name created!”
end
