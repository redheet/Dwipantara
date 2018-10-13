#!/bin/bash
#!/data/data/com.termux/files/usr/bin/bash

# Color
black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
lightblue='\e[1;34m'
lightgreen='\e[1;32m'
lightcyan='\e[1;36m'
lightred='\e[1;31m'
lightpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'
nc='\e[0m'

clear
echo -e $lightblue" { ✔ }     Updating Dwipantara     { ✔ }"
rm -rf dwipantara
wget https://raw.githubusercontent.com/MrR3DH3T/Dwipantara/master/dwipantara 2> /dev/null
chmod a+x dwipantara
echo""
function bar()
{
	bar=".............................................................."
	barlength=${#bar}
	i=0
	while ((i < 100)); do
	  n=$((i*barlength / 100))
	  printf "\e[0;35m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
	  ((i += RANDOM%5+2))
	  sleep 1
   done
}
bar
echo""
echo""
echo""
echo -e $lightpurple" 		{ ✔ }    Finish Updating    { ✔ }"
