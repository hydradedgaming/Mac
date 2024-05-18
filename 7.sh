main() {
    read text

    if [[ "$text" == "yes" || "$text" == "Yes" ]]; then
        curl -s "https://raw.githubusercontent.com/hydradedgaming/MacSploit_Themes/main/CatFall.sh" | bash
    else
        echo "Installation aborted."
    fi
}

main
