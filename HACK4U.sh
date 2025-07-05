#!/bin/bash

clear
echo "========================================"
echo "HACK4U - Your Digital Shield"
echo "========================================"
while true; do
   echo ""
   echo "select an option"
   echo "1) generate a strong password"
   echo "2) show security tips"
   echo "3) basic network check (ping test)"
   echo "4) exit"
   echo -n "choice:"
   read choice
   case $choice in
      1)
        echo -n "password length: "
        read length
        openssl rand -base64 48 | cut -c1-$length
        ;;
      2)
        echo "use different passwords  for each site."
        echo "enable 2FA (Two-Factor Authentification)."
        echo "Never click on unknown links.)"
        ;;
      3)
        echo -n "enter website to ping (e.g. google.com): "
        read site
        ping -c 4 site
        ;;
      4)
        echo "Exiting... Stay safe !"
        break
        ;;
      *)
        echo "invalid option, please choose 1 to 4."
        ;;

   esac
done
