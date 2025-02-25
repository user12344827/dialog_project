rm -rf php* && rm -f v3.*
sudo rm -rf /var/www
sudo apt remove apache2 -y &> /dev/null
sudo apt remove php php-xml php-json -y &> /dev/null
# echo "phpsysinfo removed."
dialog --title "成功" --msgbox "喔!不!你把phpsysinfo刪掉了!你壞壞!" 10 50
