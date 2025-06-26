### Step 1: Install Colima and Docker CLI Core Components:

# Install Colima
brew install colima

# Install Docker CLI (without Docker Desktop)
brew install docker docker-compose docker-buildx

### Step 2: Setup BuildX Integration: Choose one of the following methods to properly integrate BuildX:

#### Option A: Symlink Method (Simple): Create Docker CLI plugins directory
mkdir -p ~/.docker/cli-plugins

# Create symlink to buildx
ln -sf $(which docker-buildx) ~/.docker/cli-plugins/docker-buildx

#### Option B: Direct Download Method (Alternative): Create Docker CLI plugins directory
mkdir -p ~/.docker/cli-plugins

# Download buildx plugin directly
BUILDX_VERSION=$(curl -s https://api.github.com/repos/docker/buildx/releases/latest | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/')
curl -L "https://github.com/docker/buildx/releases/download/${BUILDX_VERSION}/buildx-${BUILDX_VERSION}.darwin-arm64" -o ~/.docker/cli-plugins/docker-buildx

# Make it executable
chmod +x ~/.docker/cli-plugins/docker-buildx
