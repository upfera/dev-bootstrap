# Check if the ~/.ssh directory exists
if [ ! -d "$HOME/.ssh" ]; then
    # Create the .ssh directory if it doesn't exist
    mkdir -p "$HOME/.ssh"

    # Set the correct permissions (700) for the .ssh directory
    chmod 700 "$HOME/.ssh"

    # Inform the user
    echo ".ssh directory created with correct permissions."
else
    echo ".ssh directory already exists."
fi

# Copy files
windows_home=$(wslpath "$(powershell.exe '$env:USERPROFILE' | tr -d '\r')")

if [ -d "$(wslpath "$(powershell.exe '$env:USERPROFILE' | tr -d '\r')")/.ssh" ]; then
    cp -r "${windows_home}"/.ssh/* ~/.ssh 2>/dev/null || echo "No SSH files found to copy"
else
    echo "No .ssh directory found in Windows home"
fi

# Setup priviledges:
chmod 700 ~/.ssh
chmod 644 ~/.ssh/*.pub

for possiblekey in ~/.ssh/id_*; do
    if grep -q PRIVATE "$possiblekey"; then
        chmod 600 "$possiblekey"
    fi
done

for possiblekey in ~/.ssh/vps*; do
    if grep -q PRIVATE "$possiblekey"; then
        chmod 600 "$possiblekey"
    fi
done

