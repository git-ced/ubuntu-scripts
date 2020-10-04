# Color
COLOR_BLUE='\e[1;34m'
COLOR_GREEN='\e[1;32m'
NO_COLOR='\e[0m'

# Update existing list of packages:
sudo apt update

# Install redis
sudo apt install redis-server

echo -e "Redis and its dependencies should now be installed. Following this, there is one important configuration change to make in the Redis configuration file.\n"
echo -e "Inside the file, find the ${COLOR_GREEN}supervised${NO_COLOR} directive.\n"
echo -e "Change ${COLOR_BLUE}no${NO_COLOR} to ${COLOR_BLUE}systemd${NO_COLOR}.\n"

sudo nano /etc/redis/redis.conf

# Restart the service after editing the configuration file
sudo systemctl restart redis.service

# Test redis
sudo systemctl status redis
