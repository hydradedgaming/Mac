#!/bin/bash

main() {
    clear

    echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣷⣶⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⡿⠟⠛⠛⠛⠛⠻⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣁⠀⠀⠀⠀⣀⣤⣶⣿⣿⣿⣿⣧⠀⠀⠀ ⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⠛⠉⠛⠶⠀⠀⢐⠿⠋⠀⢨⣿⣿⣿⣿⠀⠀⠀ ⠀"
    echo "⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⢷⣿⣿⣶⠀⠀⠉⢶⣿⣿⠿⢿⣿⣿⣿⡄⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⢸⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⡇⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣶⡶⠂⠀⣀⠀⢀⡄⠐⢲⡾⣻⣿⣿⣿⠇⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣯⢿⡶⣶⣿⣟⣿⡶⠶⣿⢣⣿⣿⣿⣿⠀⠀⠀⠀⠀"
    echo "⠀⠀⠀⠀⠀⠀⣀⣾⣿⣿⣿⣧⠛⠒⠠⣤⣤⠶⠾⢣⣿⣿⣿⣿⣿⣤⣀⠀⠀⠀"
    echo "⢀⣠⣤⣶⣶⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⢿⣿⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶"
    echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣾⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "[Abyss] Digital Software"
    echo "[Owner] Nexus42"

    echo -e "Made By Hydradedgaming"
}

main

echo "Press 'Enter' to run the additional commands..."
read -r

cd "/Applications/MacSploit.app/Contents/Resources/CodeViewer_CodeViewer.bundle/Contents/Resources/ace.bundle" || {
    echo "Failed to change directory"
    exit 1
}
curl "https://raw.githubusercontent.com/hydradedgaming/MacSploit_Themes/main/GetDaTheme.js" -o "./theme-tomorrow_night.js"
echo "Install Completed DM Me On Discord (Hydradedgaming) With Theme Ideas And Join The Discord! : https://discord.gg/NASGRZa5NT"
