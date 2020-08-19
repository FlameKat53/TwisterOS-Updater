echo 'Installing Twister OS Patcher by FlameKat53 and MobileGamesMotionYT...'
#Get archive from github and unzip it
wget https://github.com/FlameKat53/Twister-OS-Patcher/archive/master.zip
unzip master.zip
cd Twister-OS-Patcher-master/
#Move pictures into icons folder
mkdir -p ~/patcher/icons/
mv twister-update.png ~/patcher/icons/twister-update.png
mv twister-update-blue.png ~/patcher/icons/twister-update-blue.png
mv twister-update-dark.png ~/patcher/icons/twister-update-dark.png
#Move scripts into patcher folder
mv patch.sh ~/patcher/patch.sh
mv uninstall.sh ~/patcher/uninstall.sh
mv upgradepatcher.sh ~/patcher/upgradepatcher.sh
#Move patcher.desktop
sudo chmod +x patcher.desktop
mv patcher.desktop ~/.local/share/applications/patcher.desktop
cp ~/.local/share/applications/patcher.desktop ~/Desktop
#Make copies of cron and rc.local
cp /etc/rc.local ~/patcher/rc.bak
crontab -l > ~/patcher/crontab.bak
#Remove useless folders and make all files executable
cd ../
rm -r Twister-OS-Patcher-master/
rm master.zip
cd ~/patcher/
chmod +x *
chmod +x patch.sh
