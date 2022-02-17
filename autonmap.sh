# V1.0 Network Scan Tool
# Written by Josh Springthorpe

# Gets information about user

echo "$(date) | Version 1.0 | Author: Josh Springthorpe"
echo " "
echo "Welcome to the Network Scanning Tool"
echo " "
echo "What is your name?"
read name
echo " "
# Gets information about the Network to scan
echo "Okay $name which IP do you want me to scan?"
read ip
echo " "
# User notification that scan is being prepped
echo "The scan of $ip is getting underway. REMINDER: Did you run as root?💀"

# Commences port scan using nmap and verbose output
# Change the path "/Path/To/Results" to your desired location
# NMAP is scanning all ports in agressive mode with OS detection, service detection and script execution
sudo nmap -p- -A -O -sC -sV $ip -vvv > "/Path/To/Results/$ip results.txt"
echo" "
# Would like to include some sort of progress timer or counter whilst nmap Returns

# Returns prompt that scan is completed
echo "Thanks for waiting $name your scan is all finished!"
echo " "
echo "You'll find the results in the results folder under filename $ip results.txt"
