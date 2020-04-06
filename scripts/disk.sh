df -h / | grep /dev/sda2 | awk '{print $3 "/" $2}' 
