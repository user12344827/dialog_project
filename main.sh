dialog --title "訊息盒子" --msgbox "歡迎來到網頁安裝" 10 50
u_choice=$(dialog --title "選單模式" --menu "網站選擇" 10 50 2 1 "一般網站" 2 "phpsysinfo" 2>&1 >/dev/tty)
main_choice=$?
if [ $main_choice -eq 1 ] || [ $main_choice -eq 255 ]; then
    clear
    exit 0
fi
if [ "$u_choice" = "1" ]; then
    style=$(dialog --title "選擇樣式" --menu "樣式選擇" 10 50 3 1 "cafe" 2 "school" 3 "chocolux" 2>&1 >/dev/tty)
    style_status=$?
    if [ $style_status -eq 1 ] || [ $style_status -eq 255 ]; then
        clear
        exit 0
    fi
    if [ "$style" = "1" ]; then
        ./install_cafe.sh
    elif [ "$style" = "2" ]; then
        ./install_school.sh
    else
        ./install_chocolux.sh
    fi
elif [ "$u_choice" = "2" ]; then
    dialog --title "訊息盒子" --msgbox "準備安裝" 10 50
    ./installphpinfo.sh
fi
dialog --title "訊息盒子" --msgbox "測試網站" 10 50
myip=`ip route get 1 | awk '{print $7; exit}'`
dialog --title "你的IP" --msgbox "$myip" 8 40
curl $myip -c 1 > curl.txt
dialog --title "curl結果" --textbox curl.txt 20 70
dialog --title "感謝" --msgbox "感謝您的使用，期待下次見面!" 10 50

