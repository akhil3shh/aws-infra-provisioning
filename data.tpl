# This file is to better understand what happens as soon as you spin a VM. 
# Firstly, it updates the VM , installs apache and starts it.

#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "The page was created by the user data" | sudo tee /var/www/html/index.html