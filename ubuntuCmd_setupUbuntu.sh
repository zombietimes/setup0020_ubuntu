# This script is for Ubuntu Ver18.04.
#!/bin/sh

echo "\n<Setup>"
echo "Upgrade and update."
echo "\n"
sudo apt-get upgrade -y
sudo apt-get update -y

echo "\n<Setup>"
echo "Install the packages for development."
echo "\n"
sudo apt-get install curl -y
sudo apt-get install build-essential -y
sudo apt-get install libssl-dev -y
sudo apt-get install python -y
sudo apt-get install git -y

echo "\n<Setup>"
echo "Reboot Ubuntu."
echo ""
echo "[Enter] to reboot."
echo "\n"
read Wait;
sudo shutdown -r now


