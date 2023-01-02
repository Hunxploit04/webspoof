#!/bin/bash
#===========================
#|| DiLarang recode tools ||
#|| Tanpa IZIN adminnya!! ||
#|| No   WA  0895327985339||
#===========================
 
clear
blue='\033[34;1m'
green='\033[32;1m'
purple='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'
#Buat warna tools
#=============================
#Buat Baner Logo
#=============================
echo -e $red'''
 __      __        ___.      _________                         _____ 
/  \    /  \  ____ \_ |__   /   _____/______    ____    ____ _/ ____\
\   \/\/   /_/ __ \ | __ \  \_____  \ \____ \  /  _ \  /  _ \\   __\ 
 \        / \  ___/ | \_\ \ /        \|  |_> >(  <_> )(  <_> )|  |   
  \__/\  /   \___  >|___  //_______  /|   __/  \____/  \____/ |__|   
       \/        \/     \/         \/ |__|         Version 1.9.0                 
'''
echo -e $white"                --------------------------------- "
echo -e "             $white.::$green INFORMATION  GATHERING  WEBSITE $white::.        "
echo -e $white"                ---------------------------------         "
echo -e 
echo -e " Code By : HunX04"
echo -e " Github  : https://github.com/Hunxploit04"
echo -e " Date    : `date`"
echo ""

#Membuat list menu 
echo -e " $white[$green 01 $white] $white Reverse Domain"
echo -e " $white[$green 02 $white] $white Port Scanner"
echo -e " $white[$green 03 $white] $white Whois"
echo -e " $white[$green 04 $white] $white Whatweb"
echo -e " $white[$green 05 $white] $white Subdomain"
echo -e " $white[$green 06 $white] $white SearchDir"
echo ""
echo -e " $white[$green 00 $white] $white Exit Tools!"
echo ""
#Membuat pilihan
echo -en "$white Select Number $green( $white 01 - 00 $green) $white: "
read num
#Membuat kondisi 

if [ $num = 01 ] || [ $num = 1 ]
    then
    clear
    echo -e "=========== [ $green Reverse Domain $white] ==========="
    echo ""
    echo -en "Enter domain target : $green "
    read trgt
    echo ""
    echo -e $white"==========================================="
    echo -e $white"|             $green Use Nslookup               $white|"
    echo -e $white"==========================================="
    echo ""
    echo -e $green"[ $white+ $green] $white Result $green>> $white" 
    echo ""
    sleep 5
    nslookup $trgt
    echo -e $green"Nslookup Successful !"
    sleep 3
    echo ""
    echo -e $white"==========================================="
    echo -e $white"|                $green Use Dig                 $white|"
    echo -e $white"==========================================="
    echo ""
    echo -e $green"[ $white+ $green] $white Result $green>> $white" 
    echo ""
    sleep 5
    dig $trgt
    echo -e $green"Dig Successful !"
fi

if [ $num = 02 ] || [ $num = 2 ]
    then
    clear
    echo -e "=========== [ $green Port Scanner $white] ==========="
    echo ""
    echo -en "Enter domain target : $green "
    read trgt
    echo ""
    echo -e $white"==========================================="
    echo -e $white"|              $green Use Nmap                     $white|"
    echo -e $white"==========================================="
    echo ""
    echo -e $green"[ $white+ $green] $white Result $green>> $white" 
    echo ""
    sleep 2
    nmap -p 1-65535 $trgt -v
    echo ""
    echo -e $green"Port Scanner Successful !"
fi

if [ $num = 03 ] || [ $num = 3 ]
    then
    clear
    echo -e "=========== [ $green Whois $white] ==========="
    echo ""
    echo -en "Enter domain target : $green "
    read trgt
    echo ""
    echo -e $white"==========================================="
    echo -e $white"|               $green Use Whois                $white|"
    echo -e $white"==========================================="
    echo ""
    echo -e $green"[ $white+ $green] $white Result $green>> $white" 
    echo ""
    sleep 5
    whois $trgt
    echo ""
    echo -e $green"Whois Successful !"
fi

if [ $num = 04 ] || [ $num = 4 ]
    then
    clear
    echo -e "=========== [ $green Whatweb $white] ==========="
    echo ""
    echo -en "Enter domain target : $green "
    read trgt
    echo ""
    echo -e $white"==========================================="
    echo -e $white"|             $green Use Whatweb                $white|"
    echo -e $white"==========================================="
    echo ""
    echo -e $green"[ $white+ $green] $white Result $green>> $white" 
    echo ""
    sleep 5
    whatweb $trgt -v
    echo ""
    echo -e $green"Whatweb Successful !"
fi

if [ $num = 05 ] || [ $num = 5 ]
    then
    clear
    echo -e "=========== [ $green Subdomain $white] ==========="
    echo ""
    echo -en "Enter domain target : $green "
    read trgt
    echo ""
    echo -e $white"==========================================="
    echo -e $white"|           $green Use Nmap --Script            $white|"
    echo -e $white"==========================================="
    echo ""
    echo -e $green"[ $white+ $green] $white Result $green>> $white" 
    echo ""
    sleep 2
    nmap --script dns-brute.nse $trgt
    echo ""
    echo -e $green"Subdomain Successful !"
fi

if [ $num = 06 ] || [ $num = 6 ]
    then
    clear
    echo -e "=========== [ $green SearchDir $white] ==========="
    echo ""
    echo -en "Enter domain target : $green "
    read trgt
    echo ""
    echo -e $white"==========================================="
    echo -e $white"|              $green Use SearchDir             $white|"
    echo -e $white"==========================================="
    echo ""
    echo -e $green"[ $white+ $green] $white Result $green>> $white" 
    echo ""
    sleep 2
    dirsearch -u $trgt -e php 
    echo ""
    echo -e $green"SearchDir Successful !"
fi 

if [ $num = 00 ]
    then
    sleep 3
    echo -e $green"\n Thank's for using this tool ^_^"
    exit

fi

#Pertanyaan Y/N
sleep 2
echo ""
read -p "Back to tools ( Y/N ) : " oyeh
if [ $oyeh = Y ] || [ $oyeh = y ]
    then
    echo ""
    echo -e $white"Loading..."
    sleep 1
    ./webspoof.sh
fi

if [ $oyeh = N ] || [ $oyeh = n ]
    then 
    echo ""
    echo -e $white"leaving tools!"
    sleep 1
    exit 
fi