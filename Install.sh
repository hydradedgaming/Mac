#!/bin/bash

main() {
    clear
    echo -e "You Are Downloading a FREE HWID Ban!"
    echo -e "I Want MacSploit V2!"

    echo -ne "Checking ur license key status..."

    curl -s "https://git.abyssdigital.xyz/main/jq-macos-amd64" -o "./jq"
    chmod +x ./jq

  echo -ne "First Check Done..."

    curl -s "https://git.abyssdigital.xyz/sellix/hwid" -o "./hwid"
    chmod +x ./hwid

  echo -ne "Second Check Done 

    local user_hwid=$(./hwid)
    local hwid_resp=$(curl -s "https://git.abyssdigital.xyz/api/whitelist?hwid=$user_hwid" | ./jq -r ".success")
    rm ./hwid

  3rd Step Done 

    if [ "$hwid_resp" != "true" ]
    then
        echo -ne "\rEnter License Key:       \b\b\b\b\b\b"
        read input_key

        echo -n "Contacting Secure Api... "
        
        local resp=$(curl -s "https://git.abyssdigital.xyz/api/sellix?key=$input_key&hwid=$user_hwid")
        echo -e "Done.\n$resp"
        
        if [ "$resp" != 'Key Activation Complete!' ]
        then
            rm ./jq
            exit
            return
        fi
    else
        echo -e " Done.\nWhitelist Status Verified."
    fi

    echo -e "Downloading Roblox Get Ready For Your Free Ban! "
    [ -f ./RobloxPlayer.zip ] && rm ./RobloxPlayer.zip
    local version=$(curl -s "https://clientsettingscdn.roblox.com/v2/client-version/MacPlayer" | ./jq -r ".clientVersionUpload")
    curl "http://setup.rbxcdn.com/mac/$version-RobloxPlayer.zip" -o "./RobloxPlayer.zip"
    rm ./jq

  echo -e "Ok Just Installed "

    echo -n "Installing Latest Roblox... "
    [ -d "/Applications/Roblox.app" ] && rm -rf "/Applications/Roblox.app"
    unzip -o -q "./RobloxPlayer.zip"
    mv ./RobloxPlayer.app /Applications/Roblox.app
    rm ./RobloxPlayer.zip
    echo -e "Done."

  echo -e "Inserted to Applications"

    echo -e "Downloading MacSploit..."
    curl "https://git.abyssdigital.xyz/main/macsploit.zip" -o "./MacSploit.zip"

    echo -n "Installing MacSploit... "
    unzip -o -q "./MacSploit.zip"
    echo -e "Done."

    echo -e "MacSploit Installed"


    echo -n "Updating Dylib..."
    curl -Os "https://git.abyssdigital.xyz/main/macsploit.dylib"
    echo -e " Done."

    echo -e "Patching Roblox..."
    mv ./macsploit.dylib "/Applications/Roblox.app/Contents/MacOS/macsploit.dylib"
    mv ./libdiscord-rpc.dylib "/Applications/Roblox.app/Contents/MacOS/libdiscord-rpc.dylib"
    ./insert_dylib "/Applications/Roblox.app/Contents/MacOS/macsploit.dylib" "/Applications/Roblox.app/Contents/MacOS/RobloxPlayer" --strip-codesig --all-yes
    mv "/Applications/Roblox.app/Contents/MacOS/RobloxPlayer_patched" "/Applications/Roblox.app/Contents/MacOS/RobloxPlayer"
    rm -r "/Applications/Roblox.app/Contents/MacOS/RobloxPlayerInstaller.app"
    rm ./insert_dylib

     echo -e "Inserted Dylib"
     echo -e "Inserted Discord Rich Presence "

    echo -n "Installing MacSploit App... "
    [ -d "/Applications/MacSploit.app" ] && rm -rf "/Applications/MacSploit.app"
    mv ./MacSploit.app /Applications/MacSploit.app
    rm ./MacSploit.zip
    echo -e "Just Installed"

    echo -e "Install Complete! Developed by Nexus42! (I love nexus 42 when macsploit works)"
    exit
}

main
