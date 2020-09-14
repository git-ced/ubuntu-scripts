# Color
COLOR_BLUE='\e[1;34m'
COLOR_GREEN='\e[1;32m'
NO_COLOR='\e[0m'

# Update existing list of packages:
sudo apt update

# Install a few prerequisite packages which let `apt` use packages over HTTPS:
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# Add the GPG key for the official Docker repository to your system:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Update the package database with the Docker packages from the newly added repo:
sudo apt update

# Make sure you are about to install from the Docker repo instead of the default Ubuntu repo:
# Sample output
# docker-ce:
#   Installed: (none)
#   Candidate: 5:19.03.9~3-0~ubuntu-focal
apt-cache policy docker-ce

# Finally, install Docker:
sudo apt install docker-ce

echo -e "\n\nDocker should now be installed. \n" 

echo "Check if docker's daemon is running by typing:"
echo -e "${COLOR_BLUE}sudo systemctl status docker${NO_COLOR}.\n"

echo "The output should have something similar like the following:"
echo -e "Active:${COLOR_GREEN} active (running)${NO_COLOR} since Tue 2020-05-19 17:00:41 UTC; 17s ago\n\n"
