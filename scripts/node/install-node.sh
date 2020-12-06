# Go to home directory
cd ~

# Retrieve installation script PPA
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh

# Run node source script
sudo bash nodesource_setup.sh

# Install nodejs
sudo apt install nodejs

# Check version
node -v
