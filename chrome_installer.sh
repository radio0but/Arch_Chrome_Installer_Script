#!/bin/bash
RED='\e[31m'
echo -e "\e[31m Salut $USER, I'm about to install or update chrome on your system. Stopping chrome \033[0m"
pkill chrome
echo -e "\033[0;32mDone !  \033[0m"
echo
FILE=./google-chrome-stable_current_x86_64.rpm
FOLDER=./google-chrome-stable_current_x86_64
if [ -f "$FILE" ]; then
   
    rm google-chrome-stable_current_x86_64.rpm
else 

fi

if [ -d "$FOLDER" ]; then
    
    rm -r google-chrome-stable_current_x86_64/
else
    
fi


wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm


ark -ab google-chrome-stable_current_x86_64.rpm
echo -e "\033[0;32mFait !  \033[0m"
echo
cd google-chrome-stable_current_x86_64/

echo -e "${RED}Please enter your Password to complete the operation\033[0m"

sudo cp -R  ./* /

echo -e "\033[0;32mYou've successfully Updated or Installed Chrome on youre system\033[0m"
