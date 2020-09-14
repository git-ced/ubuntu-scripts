# User defined values
USERNAME='cheb'

# Color
COLOR_BLUE='\e[1;34m'
COLOR_CYAN='\e[1;36m'
NO_COLOR='\e[0m'

echo -e "\n\nConfirm later that your user is added to the docker group by typing:"
echo -e "${COLOR_BLUE} id -nG${NO_COLOR}.\n"

echo "Output should be something like:"
echo -e "${COLOR_CYAN}${USERNAME} sudo docker${NO_COLOR}\n\n"

# Add username to the docker group.
sudo usermod -aG docker ${USERNAME}

# Apply the new group membership
su - ${USERNAME}
