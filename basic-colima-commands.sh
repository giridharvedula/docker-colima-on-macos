colima start
colima stop
colima restart
colima status
colima ssh
colima logs
colima list
colima delete

# Colima start with custom rssource
Start Colima with custom resources (e.g., 2 CPUs, 4GB RAM, 50GB disk):

# Create a persistent configuration file:
## Create config directory
mkdir -p ~/.config/colima

## Create default configuration
cat > ~/.config/colima/default.yaml << EOF
# CPU cores
cpu: 4

# Memory in GB
memory: 8

# Disk size in GB
disk: 100

# Container runtime
runtime: docker

# VM type
vmType: vz

# Mount type for better performance
mountType: virtiofs

# Architecture
arch: aarch64

# Enable Rosetta for x86 compatibility
vzRosetta: true

# Assign IP address 
Create a persistent configuration file:
EOF
