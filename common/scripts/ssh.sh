ssh-keygen -t ed25519 -f ~/.ssh/key -N ""
ssh-copy-id aidan@213.219.36.37

touch ~/.ssh/config
echo "Host main" | tee -a ~/.ssh/config
echo "  HostName 213.219.36.37" | tee -a ~/.ssh/config
echo "  User aidan" | tee -a ~/.ssh/config
echo "  IdentityFile ~/.ssh/key" | tee -a ~/.ssh/config
