# Docker Installation Scripts (Windows, macOS, Ubuntu)

This repository provides automated scripts to install Docker across major operating systems:

- Windows (PowerShell with Docker Desktop)
- macOS (Homebrew with Docker Desktop)
- Ubuntu (Docker Engine)

The goal is to simplify Docker setup using repeatable and consistent scripts.

---

## Overview

Manual installation of Docker can be repetitive and error-prone.  
This project automates the process using platform-specific scripts that:

- Install Docker and required dependencies
- Start necessary services
- Validate installation

---

## Project Structure
setup-Docker/
├── WIndowsSetup.ps1
├── MACSetup.sh
└── UbuntuSetup.sh


---

## Prerequisites

### General
- Internet connection
- Administrative or sudo privileges

### Windows
- Windows 10 or 11
- winget installed (App Installer from Microsoft Store)

### macOS
- macOS (Intel or Apple Silicon)
- Homebrew (installed automatically if missing)

### Ubuntu
- Ubuntu 20.04 or later

---

## Windows Installation

Run PowerShell as Administrator:

```powershell
cd Setup-Docker
.\WIndowsSetup.ps1
```

### Notes

- Docker Desktop will start automatically after installation
- WSL2 may be required; Docker Desktop will guide you if it is not configured

### Mac OS installation
```
cd setup-Docker
chmod +x  MACSetup.sh.sh
./MACSetup.sh.sh
```

### Ubuntu installation
```
cd setup-Docker
chmod +x  UbuntuSetup.sh.sh
./UbuntuSetup.sh.sh
```
### Verify Installation
```
docker --version
```
