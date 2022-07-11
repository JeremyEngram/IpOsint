#!/bin/bash
# Code by Invalid
echo -e "\e[1:35m                                                                         Kon'nichiwa yōkoso! ^^ \e[0m"
echo
echo -e "\e[1:35m                                                                 ⡆⣐⢕⢕⢕⢕⢕⢕⢕⢕⠅⢗⢕⢕⢕⢕⢕⢕⢕⠕⠕⢕⢕⢕⢕⢕⢕⢕⢕⢕ \e[0m"
echo -e "\e[1:35m                                                                 ⢐⢕⢕⢕⢕⢕⣕⢕⢕⠕⠁⢕⢕⢕⢕⢕⢕⢕⢕⠅⡄⢕⢕⢕⢕⢕⢕⢕⢕⢕ \e[0m"
echo -e "\e[1:35m                                                                 ⢕⢕⢕⢕⢕⠅⢗⢕⠕⣠⠄⣗⢕⢕⠕⢕⢕⢕⠕⢠⣿⠐⢕⢕⢕⠑⢕⢕⠵⢕ \e[0m"
echo -e "\e[1:35m                                                                 ⢕⢕⢕⢕⠁⢜⠕⢁⣴⣿⡇⢓⢕⢵⢐⢕⢕⠕⢁⣾⢿⣧⠑⢕⢕⠄⢑⢕⠅⢕ \e[0m"
echo -e "\e[1:35m                                                                 ⢕⢕⠵⢁⠔⢁⣤⣤⣶⣶⣶⡐⣕⢽⠐⢕⠕⣡⣾⣶⣶⣶⣤⡁⢓⢕⠄⢑⢅⢑ \e[0m"
echo -e "\e[1:35m                                                                 ⠍⣧⠄⣶⣾⣿⣿⣿⣿⣿⣿⣷⣔⢕⢄⢡⣾⣿⣿⣿⣿⣿⣿⣿⣦⡑⢕⢤⠱⢐ \e[0m"
echo -e "\e[1:35m                                                                 ⢠⢕⠅⣾⣿⠋⢿⣿⣿⣿⠉⣿⣿⣷⣦⣶⣽⣿⣿⠈⣿⣿⣿⣿⠏⢹⣷⣷⡅⢐ \e[0m"
echo -e "\e[1:35m                                                                 ⣔⢕⢥⢻⣿⡀⠈⠛⠛⠁⢠⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⠛⠛⠁⠄⣼⣿⣿⡇⢔ \e[0m"
echo -e "\e[1:35m                                                                 ⢕⢕⢽⢸⢟⢟⢖⢖⢤⣶⡟⢻⣿⡿⠻⣿⣿⡟⢀⣿⣦⢤⢤⢔⢞⢿⢿⣿⠁⢕ \e[0m"
echo -e "\e[1:35m                                                                 ⢕⢕⠅⣐⢕⢕⢕⢕⢕⣿⣿⡄⠛⢀⣦⠈⠛⢁⣼⣿⢗⢕⢕⢕⢕⢕⢕⡏⣘⢕ \e[0m"
echo -e "\e[1:35m                                                                 ⢕⢕⠅⢓⣕⣕⣕⣕⣵⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣷⣕⢕⢕⢕⢕⡵⢀⢕⢕ \e[0m"
echo -e "\e[1:35m                                                                 ⢑⢕⠃⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⢕⢕⢕ \e[0m"
echo -e "\e[1:35m                                                                 ⣆⢕⠄⢱⣄⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢁⢕⢕⠕⢁ \e[0m"
echo -e "\e[1:35m                                                                 ⣿⣦⡀⣿⣿⣷⣶⣬⣍⣛⣛⣛⡛⠿⠿⠿⠛⠛⢛⣛⣉⣭⣤⣂⢜⠕⢑⣡⣴⣿ \e[0m"
echo
echo "                                                        This tool has been built for OSINT on IP's, have fun!"
echo
echo -e "\e[35m################################################## \e[0m"
echo -e "\e[35mAuthor:  Invalid Random 			 #\e[0m"
echo -e "\e[35mTwitter: twitter.com/Invalid_Random	   	 #\e[0m"
echo -e "\e[35mDiscord: Invalid#4370			  	 #\e[0m"
echo -e "\e[35mGithub:	github.com/invalidrandom		 #\e[0m"
echo -e "\e[35mWebsite: theinvalidrandom.web.app		 #\e[0m"
echo -e "\e[35m##################################################\e[0m"
echo
echo -e "\e[35mInstalling/Checking dependencies...\e[0m"
echo
sudo apt-get install nmap
sudo apt-get install geoip-bin
sudo apt-get install lolcat
echo
echo -e "\e[35mToday's date:\e[0m"
date | lolcat
echo
echo -e "\e[35mDone! initializing...\e[0m"
echo
echo -e "\e[35mEnter the target's IP address:\e[0m"
read IP
echo
echo -e "\e[35mPing IP:\e[0m"
ping -c 4 $IP | grep "64 bytes"
echo
echo -e "\e[35mLocation Information:\e[0m"
curl https://freegeoip.app/xml/$IP
echo
echo -e "\e[35mEnter the port to search:\e[0m"
read P
echo
echo -e "\e[35mScanning...\e[0m"
echo
nmap -Pn -sT $IP -p $P
echo
echo -e "\e[35mDone! Exiting.\e[0m"
exit && clear
