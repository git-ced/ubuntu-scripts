cd ~

curl -OL https://golang.org/dl/go1.17.7.linux-amd64.tar.gz

sha256sum go1.17.7.linux-amd64.tar.gz

# Although /usr/local/go is the recommended location for installing Go, some users may prefer or require different paths.
sudo tar -C /usr/local -xvf go1.17.7.linux-amd64.tar.gz


sudo nano ~/.profile

# Add the following line to the end of the file:
export PATH=$PATH:/usr/local/go/bin

# After saving and closing the file, run the following command to reload the changes:
# source ~/.profile

