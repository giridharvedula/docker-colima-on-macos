### Step 1: Clean Environment Variables

#### Remove any existing Docker environment variables that might conflict:
# Check for existing DOCKER_HOST variables
grep -n DOCKER_HOST ~/.zshrc ~/.bash_profile ~/.bashrc 2>/dev/null

# Comment out or remove any DOCKER_HOST exports found
# Example: Change 'export DOCKER_HOST="..."' to '# export DOCKER_HOST="..."', Unset DOCKER_HOST in current session
unset DOCKER_HOST

# Reload shell configuration
source ~/.zshrc


### Step 2: Start Colima with optimized settings:
#### recommended configuration
colima start --cpu 4 --memory 8 --disk 100 --arch aarch64 --vm-type vz --vz-rosetta --mount-type virtiofs --network-address

# export the docker sock to colima to scan docker images with trivy
export DOCKER_HOST=unix:///Users/$(whoami)/.colima/default/docker.sock
