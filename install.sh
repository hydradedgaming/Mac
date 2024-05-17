say_hi() {
    echo -e "\033[32mhi\033[0m"
}

main() {
    read -p "Enter text: " text
    if [ "$text" == "yes" ] || [ "$text" == "Yes" ]; then
        echo -e "\033[32mok hi bro\033[0m"
    else
        say_hi
    fi
}

main
