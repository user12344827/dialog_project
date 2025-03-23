sudo apt install apache2 -y &> /dev/null 
# echo "Apache2 installed." 
dialog --title "成功" --msgbox "您的apacha已安裝成功!" 10 50
sudo apt install php php-xml php-json -y &> /dev/null
sudo service apache2 restart 
wget https://github.com/phpsysinfo/phpsysinfo/archive/refs/tags/v3.4.4.zip &> /dev/null
unzip v3.4.4.zip &> /dev/null 
sudo mv phpsysinfo-3.4.4/* /var/www/html/ 
sudo cp /var/www/html/phpsysinfo.ini.new /var/www/html/phpsysinfo.ini 
# echo "You can visit your phpsysinfo now."
dialog --title "成功" --msgbox "您的phpsysinfo已安裝成功，高興吧!" 10 50
