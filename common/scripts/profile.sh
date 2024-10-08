sudo rm /var/lib/AccountsService/users/aidan
sudo rm /var/lib/AccountsService/icons/aidan

sudo touch /var/lib/AccountsService/users/aidan
sudo echo "[User]" | sudo tee -a /var/lib/AccountsService/users/aidan
sudo echo "Session=" | sudo tee -a /var/lib/AccountsService/users/aidan
sudo echo "Icon=/var/lib/AccountsService/icons/aidan" | sudo tee -a /var/lib/AccountsService/users/aidan
sudo echo "SystemAccount=false" | sudo tee -a /var/lib/AccountsService/users/aidan

sudo cp "/home/aidan/Dropbox/Aidan/Pictures/Other/Profile Pictures/Profile Picture.png" /var/lib/AccountsService/icons/aidan
