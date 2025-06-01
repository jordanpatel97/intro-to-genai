#!/bin/bash

# Print colorful messages
print_message() {
    echo -e "\033[1;34m$1\033[0m"
}

print_error() {
    echo -e "\033[1;31m$1\033[0m"
}

print_success() {
    echo -e "\033[1;32m$1\033[0m"
}

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    print_error "Python 3 is not installed. Please install Python 3 first."
    exit 1
fi

# Create virtual environment if it doesn't exist
if [ ! -d ".venv" ]; then
    print_message "Creating virtual environment..."
    python3 -m venv .venv
    print_success "Virtual environment created successfully!"
fi

# Activate virtual environment and install requirements
print_message "Activating virtual environment and installing requirements..."
source .venv/bin/activate

# Install requirements
print_message "Installing requirements..."
pip install -r requirements.txt

# Install ipykernel
print_message "Installing ipykernel..."
pip install ipykernel

# Create Jupyter kernel
print_message "Creating Jupyter kernel..."
python -m ipykernel install --user --name=intro-to-genai-kernel --display-name="Python (intro-to-genai)"

print_success "\nSetup completed successfully!"
print_message "\nTo start working with the notebooks:"
print_message "1. Activate the virtual environment: source .venv/bin/activate"
print_message "2. Start Jupyter: jupyter notebook"
print_message "3. Open the notebook in the 'notebooks' directory"
print_message "4. Select the 'Python (genai101)' kernel from the Kernel menu" 