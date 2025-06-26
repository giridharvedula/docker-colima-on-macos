## Performance Optimization. Recommended Settings.

### For optimal performance on Apple Silicon Macs:

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

### File System Performance

Use VirtioFS for better file system performance:
- Faster file I/O operations
- Better compatibility with file watchers
- Reduced CPU usage for file operations

---

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

### Import Existing Images

```bash
# Save images from Docker Desktop (before removal)
docker save image_name:tag -o image_backup.tar

# Load images in Colima
docker load -i image_backup.tar
```

---
