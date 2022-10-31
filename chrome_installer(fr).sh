#!/bin/bash
RED='\e[31m'
echo -e "\e[31m Salut $USER, je vais faire la mise a jour de google chrome, je l'eteind pour travailler dessu\033[0m"
pkill chrome
echo -e "\033[0;32mFait !  \033[0m"
echo
FILE=./google-chrome-stable_current_x86_64.rpm
FOLDER=./google-chrome-stable_current_x86_64
if [ -f "$FILE" ]; then
    echo -e "${RED}$FILE existe je vais le supprimer il doit etre vieux.\033[0m"
    rm google-chrome-stable_current_x86_64.rpm
else 
    echo -e "${RED}$FILE n'existe pas et tant mieux rien a supprimer\033[0m"
fi
echo -e "\033[0;32mFait !  \033[0m"
echo
if [ -d "$FOLDER" ]; then
    echo -e "${RED}$FOLDER est present parfait bye bye on prend pas de chance.\033[0m"
    rm -r google-chrome-stable_current_x86_64/
else
    echo -e "${RED}$FOLDER n'existe pas tant mieu rien a supprimer\033[0m"
fi
echo -e "\033[0;32mFait !  \033[0m"
echo
echo -e "${RED}la on vas telecharger chrome sur le site de google\033[0m"

wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
echo -e "\033[0;32mFait !  \033[0m"
echo
echo -e "${RED}La on va extraire le contenu du paquet le plus recent de google chrome\033[0m"

ark -ab google-chrome-stable_current_x86_64.rpm
echo -e "\033[0;32mFait !  \033[0m"
echo
cd google-chrome-stable_current_x86_64/

echo -e "${RED}Maintenant j'ai besoin du mot de passe que tu utilise pour te connecter sur ton ordi    ps. c'est normal de ne pas voir ce qu'on ecrit. quand fini d'ecrire le mot de passe appuier sur enter\033[0m"

sudo cp -R  ./* /

echo -e "\033[0;32mFelicitation chrome est a jour\033[0m"
