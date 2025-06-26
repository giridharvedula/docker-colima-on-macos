### Step 3: Configure Docker Context: Ensure Docker CLI uses Colima:

# Switch to Colima context
docker context use colima

# Verify context is active
docker context ls

### Step 4: Enable Modern Build Features (Optional): Enable BuildKit with regular docker build
export DOCKER_BUILDKIT=1

# Add to shell profile to make permanent
echo 'export DOCKER_BUILDKIT=1' >> ~/.zshrc
