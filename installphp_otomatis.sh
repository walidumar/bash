#!/bin/bash

PS3='Install PHP Module Multiversi Ubuntu 22.04 Server: '
options=("PHP 5.6" "PHP 7.4" "PHP 8.0" "PHP 8.1" "PHP 8.2"  "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "PHP 5.6")
            echo "Bersiap Menginstall PHP 5.6"
	    sudo apt install software-properties-common
            sudo add-apt-repository ppa:ondrej/php
	    sudo apt update && sudo apt upgrade -y
            sudo apt-get install php5.6 php5.6-{mysql,mbstring,xml,gd,curl,fpm} -y
            ;;
        "PHP 7.4")
            echo "Bersiap Menginstall PHP 7.4"
	    sudo apt install software-properties-common
	    sudo add-apt-repository ppa:ondrej/php
            sudo apt update && sudo apt upgrade -y
	    sudo apt-get install php7.4 php7.4-{mysql,mbstring,xml,gd,curl,fpm} -y
            ;;
        "PHP 8.0")
            echo "Bersiap Menginstall Install PHP 8.0"
	    sudo apt install software-properties-common
	    sudo add-apt-repository ppa:ondrej/php
            sudo apt update && sudo apt upgrade -y
	    sudo apt-get install php8.0 php8.0-{mysql,mbstring,xml,gd,curl,fpm} -y
            ;;
        "PHP 8.1")
            echo "Bersiap Menginstall Install PHP 8.1"
            sudo apt install software-properties-common -y
            sudo add-apt-repository ppa:ondrej/php
	    sudo apt update && sudo apt upgrade -y
	    sudo apt-get install php8.1 php8.1{mysql,mbstring,xml,gd,curl,fpm} -y
            ;;
        "PHP 8.2")
            echo "Bersiap Menginstall Install PHP 8.2"
	    sudo apt install software-properties-common
	    sudo add-apt-repository ppa:ondrej/php
            sudo apt update && sudo apt upgrade -y
            sudo apt-get install php8.2 php8.2-{mysql,mbstring,xml,gd,curl,fpm} -y
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
