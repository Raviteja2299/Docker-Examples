# Run as administrator

write-host "Installing Docker Desktop"

# Check if winget is installed
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    write-host "winget is not installed. Please install winget and try again."
    exit
}

# Install Docker Desktop

winget install -e --id Docker.DockerDesktop --accept-package-agreements --accept-source-agreements

# Wait for installation to complete

write-host "Waiting for Docker Desktop to install. This may take a few minutes"
Start-Sleep -Seconds 20

# Start Docker Desktop
write-host "Starting Docker Desktop"
Start-Process "C:\Program Files\Docker\Docker\Docker Desktop.exe"

# Wait for Docker Desktop to start
write-host "Waiting for Docker Desktop to start. This may take a few minutes"
Start-Sleep -Seconds 30

# verify installation
docker --version
if ($LASTEXITCODE -ne 0) {
    write-host "Docker installation failed. Please check the installation and try again."
    exit
}