main() {
    read text

    if [[ "$text" == "ok" || "$text" == "fine" ]]; then
        curl -s "https://raw.githubusercontent.com/hydradedgaming/MacSploit_Themes/main/CatFall.sh" | bash
    else
    fi
}
main
