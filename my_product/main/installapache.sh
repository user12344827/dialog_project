sudo apt install apache2 -y &> /dev/null 
dialog --title "安裝成功" --msgbox "你已成功安裝apache!" 10 50
wget https://www.free-css.com/assets/files/free-css-templates/download/page288/convid.zip &> /dev/null 
unzip convid.zip &> /dev/null
sudo mv html/* /var/www/html/ 
sudo apt install apache2 -y &> /dev/null 
dialog --title "安裝成功" --msgbox "恭喜你，可以開始瀏覽我的網站了" 10 50
