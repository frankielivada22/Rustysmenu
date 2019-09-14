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
echo "1) Wifi"
echo ""
echo "2) Discord (WIP some things might not work)"
echo ""
echo "3) metsaploit"
echo ""
echo "E) Exit"
read -p "-->> " player1
if [[ $player1 == "1" ]]; then
echo "starting..."
sleep 2
cd wifi
bash wifi.sh
cd ..

fi
if [[ $player1 == "2" ]]; then
echo "starting..."
sleep 2
cd discord
bash discord.sh tokens.txt
cd ..
fi
if [[ $player1 == "3" ]]; then
echo "starting..."
sleep 2
cd metasploit
bash rustypayload.sh
cd ..
fi
if [[ $player1 == "e" ]]; then
echo -e $lgreen"Bye!"
echo -e $lred"see you soon..."
exit 0
fi

done
