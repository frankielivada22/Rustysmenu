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

clear
echo -e $lred"coding by (ANK1036Official) idea by (rustywolf021)"
echo ""
echo "If you dont make a file in the discord folder called tokens.txt"
echo "Put your discord token(s) in here"
echo ""
[ $# -eq 0 ] && { echo "Usage: $0 tokens.txt (PROXY_IP)"; echo "A proxy is not necissary, and must be http based. Example: http://202.54.1.1:3128/"; exit 1; }
[ $# -eq 2 ] && { export http_proxy=$2 export ; https_proxy=$http_proxy; }

    echo -e $nc"Welcome " $lred"$USER" $nc" Discord-Spammer"
    echo ""
    echo -e $nc"1) Spam Server"
    echo ""
    echo -e $nc"2) Spam Friend Request"
    echo ""
    echo -e $nc"3) Spam DM"
    echo ""
    echo -e $nc"4) Join Server"
    echo ""
    echo -e $nc"5) Leave Server"
    echo ""
    echo -e $nc"0) exit"

    read menu1
    if [[ $menu1 == "1" ]]; then
        echo -e $lgreen"Selected Spam Server..."
        echo "Enter channel ID"
        read -p '>> ' channelid
        echo "Enter message"
        read -p '>> ' message_data
            while : 
            do
                for token in `cat $1`; do
                printf "Token: $token , result: "
                RESULT=`curl -s -H "Content-Type: application/json" -H "authorization: $token" -X POST -d '{"content":"'"$message_data"'","nonce":"","tts":false}' "https://discordapp.com/api/v7/channels/$channelid/messages"`
                if [[ $(echo $RESULT | head -1) =~ "<html>" ]]; then
                    printf "fail\n"
                else
                    printf "success\n"
                fi
            done
        done
    fi
    if [[ $menu1 == "2" ]]; then
        echo -e $lgreen"Selected Spam Friend Request"
        echo "Enter user ID"
        read -p '>> ' userid
        for token in `cat $1`; do
            printf "Token: $token , result: "
            RESULT=`curl -s -H "Content-Type: application/json" -H "authorization: $token" -H 'Content-Length: 0' -X PUT "https://discordapp.com/api/v7/users/@me/relationships/$userid"`
            if [[ $(echo $RESULT | head -1) =~ "<html>" ]]; then
                printf "fail\n"
            else
                printf "success\n"
            fi
        done
    fi
    if [[ $menu1 == "3" ]]; then
        echo -e $lgreen"Selected Spam DM"
        echo "Removed... Sorry."
    fi
    if [[ $menu1 == "4" ]]; then
        echo -e $lgreen"Selected Join Server"
        echo "Enter invitelink regex (last part at the end of the invite link)"
        read -p '>> ' invitelink
        for token in `cat $1`; do
            printf "Token: $token , result: "
            RESULT=`curl -s -H "authorization: $token" -H 'Content-Length: 0' -X POST "https://discordapp.com/api/v7/invite/$invitelink"`
            if [[ $(echo $RESULT | head -1) =~ "<html>" ]]; then
                printf "fail\n"
            else
                printf "success\n"
            fi
        done
    fi
    if [[ $menu1 == "5" ]]; then
        echo -e $lgreen"Selected Leave server"
        echo "Enter guild ID"
        read -p '>> ' guildid
        for token in `cat $1`; do
            printf "Token: $token , result: "
            RESULT=`curl -s -H "authorization: $token" -H 'Content-Length: 0' -X DELETE "https://discordapp.com/api/v7/users/@me/guilds/$guildid"`
            if [[ $(echo $RESULT | head -1) =~ "<html>" ]]; then
                printf "fail\n"
            else
                printf "success\n"
            fi
        done
    fi
    if [[ $menu1 == "0" ]]; then
        echo "Exiting..."
        cd ..
        exit 1
    fi
done
