# !/bin/bash

# colors
source /etc/.color

# main code
(clear)
echo -e "${BRed}###################################"
echo '.______    __  .__   __.   _______'
echo '|   _  \  |  | |  \ |  |  /  _____|'
echo '|  |_)  | |  | |   \|  | |  |  __'
echo '|   ___/  |  | |  . `  | |  | |_ |'
echo '|  |      |  | |  |\   | |  |__| |'
echo '| _|      |__| |__| \__|  \______|'
echo ""
echo "###################################"
echo -e "${RCol}"
echo "What ip/ domain do you want to ping? (default is google.com)"
read ping
echo "How many time do you want to ping this ip? (default is until stopped(Ctrl+C))"
read count
echo "Do you want to proceed? (n/y)"
read yn

# options, if y = do | if n/* = exit
if [ "$yn" = "y" ] || [ "$yn" = "yes" ]
then
  if [ "$count" = "" ] || [ "$ping" = "" ]
  then
    (ping google.com)
  else
    (ping $ping -c $count)
  fi
else
  exit
fi
