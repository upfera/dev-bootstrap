# 🐧 Oh My WSL

## ✅ System Requirements

- Windows 10 version 2004 and higher (Build 19041 and higher) or Windows 11
- At least 4GB of RAM (8GB recommended)
- Virtualization enabled in BIOS/UEFI

### Required Software

- **WSL2** must be enabled
  - Verify with: `wsl --status`
  - Version check: `wsl --version`
  - [Enable WSL2 - Microsoft Docs](https://learn.microsoft.com/en-us/windows/wsl/install)
- **Git** for Windows
  - Verify with: `git --version`
  - [Download Git](https://git-scm.com/downloads)


# ▶️ Installation

### Install fresh Ubuntu
```bash
  wsl --install -d Ubuntu 
```

### Exit to Windows
```bash
  exit 
```

### 📦 Clone the repository and go to the checked-out directory

```bash
  git clone git@github.com:intosoft-tm/dev-setup.git
  cd dev-setup
```

### Install dev-setup
```bash
  wsl -e bash -c ./oh_my_ubuntu.sh
```

### 🔄 Reinstall WSL2
If you prefer the clean installation, do the following steps:

```bash
   wsl --unregister Ubuntu; wsl --install -d Ubuntu; wsl -s Ubuntu
```



## 🎨 Switch Fast-Theme Colors
To change your terminal theme, for example, to **Safari**:

```bash
  wsl bash -c "fast-theme safari"
```

## 🐳 Expose Docker

Exposing podman on TCP:

```shell
  podman system service --time=0 tcp:0.0.0.0:2375
```

### DOCKER_HOST under Windows

Show ip of WSL:
```bash
  wsl hostname -I
```
Set environment variable **DOCKER_HOST** to **tcp:[ip-address]:2375**

### DOCKER_HOST under WSL2

```shell
  export DOCKER_HOST=unix://${XDG_RUNTIME_DIR}/podman/podman.sock
```

## 🧪 Experimental: ACT Permission Fix
If you encounter permission errors with ACT:

```bash
  sudo chmod 666 /var/run/podman/podman.sock
  sudo chown 1000 /var/run/podman/podman.sock
```

## 🧰 Install `act` for Local GitHub Actions Testing

```bash
  curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash
```
