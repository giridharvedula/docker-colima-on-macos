# Docker Setup with Colima on macOS

A comprehensive guide to running Docker on macOS without Docker Desktop using Colima.

## Overview

For running Docker on macOS without Docker Desktop, **Colima** is the recommended choice for a full Docker-like experience that provides seamless compatibility with existing Docker workflows.

## Colima vs Podman Comparison

| Feature                                   | Colima (Recommended)                                                         | Podman (Alternative)                      |
|--------------------------------------------|------------------------------------------------------------------------------|-------------------------------------------|
| Docker Desktop replacement                 | ✅ Drop-in replacement                                                       | —                                         |
| Runtime                                   | ✅ Uses containerd/Docker runtime (identical to standard Docker)              | ✅ Daemonless architecture (more secure)   |
| Docker CLI compatibility                   | ✅ Seamless, all commands work identically                                    | ❌ Requires Docker compatibility mode      |
| Docker Compose support                     | ✅ Native, no additional setup required                                       | ❌ More complex, requires workarounds      |
| Setup and configuration                    | ✅ Simpler, minimal learning curve                                            | ❌ More complex for Docker Compose         |
| Compatibility with Docker workflows        | ✅ Better compatibility                                                       | ❌ Some features may not work identically  |
| Security                                  | —                                                                            | ✅ Rootless containers by default          |
| Enterprise support                         | —                                                                            | ✅ Red Hat backing and enterprise support  |

## Prerequisites

### Install Homebrew

If Homebrew is not already installed:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Recommended Settings: For optimal performance on Apple Silicon Macs:

```bash
colima start \
  --cpu 6 \
  --memory 12 \
  --disk 120 \
  --arch aarch64 \
  --vm-type vz \
  --vz-rosetta \
  --mount-type virtiofs \
  --network-address
```

## Migration from Docker Desktop

### Remove Docker Desktop Remnants

```bash
# Remove Docker Desktop environment variables
# Edit ~/.zshrc and remove/comment out:
# export DOCKER_HOST="unix:///var/run/docker.sock"

# Remove Docker Desktop contexts (if any)
docker context rm desktop-linux 2>/dev/null || true

# Unset environment variables
unset DOCKER_HOST
```
