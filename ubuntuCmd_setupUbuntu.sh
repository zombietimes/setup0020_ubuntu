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
echo "Add 'New Document' in the context menu."
echo "\n"
touch ~/Templates/Empty\ Document

echo "\n<Setup>"
echo "Set up Open SSH."
echo "- If you use virtualBox + Ubuntu,"
echo "- Open SSH allows accessing from the host OS to the guest OS."
echo "\n"
sudo apt-get install openssh-server -y
sudo service ssh start
ps aux | grep ssh

echo "\n<Setup>"
echo "Set up Google Chrome."
echo "- Go to the official site and download the installer."
echo "- [URL] https://www.google.co.jp/chrome/browser/desktop/"
echo ""
echo "After completed, [Enter] to continue."
echo "\n"
read Wait;
sudo apt-get install libappindicator1 -y
cd ~/Downloads/
ls
sudo dpkg -i ./google-chrome*.deb

echo "\n<Setup>"
echo "Reboot Ubuntu."
echo ""
echo "[Enter] to reboot."
echo "\n"
read Wait;
sudo shutdown -r now


