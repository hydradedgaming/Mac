echo "$(tput setaf 2)"
echo "Welcome to:"
echo "________                       __            "
echo "\\_____  \\  __ _______    ____ |  | _________ "
echo " /  / \\  \\|  | \\__  \\ _/ ___\\|  |/ /\\_  __ \\"
echo "/   \\_/.  \\  | \\/ __ \\\\  \\___|    <  |  | \\/"
echo "\\______\\ \\_/____/(____  /\\___  >__|_ \\|__|   "
echo "       \\__>          \\/     \\/     \\/         "
echo "                                        v1.1"
echo "DIY custom theme creator for Macsploit! Made by $(tput setaf 3)ZackDaQuack$(tput sgr0)!"
echo ""
echo ""

read -p $'\e[32mPress Enter!\e[0m' idk
echo ""
read -p "Select your mode: Create (C) or Install (I): " smode
echo ""

if [ "$smode" == "C" ] || [ "$smode" == "c" ]; then

    read -p "Add your background image link: " bgimg
    text_color_main=$(get_valid_hex_color "What color do you want the text to be? (main text): ")
    text_color_while=$(get_valid_hex_color "What color do you want the text to be? (while, do, end, etc): ")
    text_color_equal=$(get_valid_hex_color "What color do you want the text to be? (= sign): ")
    text_color_true=$(get_valid_hex_color "What color do you want the text to be? (true and false): ")
    text_shadow=$(get_valid_hex_color "What color do you want the text shadow to be?: ")
    selection_color=$(get_valid_hex_color "What color do you want the text selected to be?: ")
    generate_css "$bgimg" "$text_color_main" "$text_color_while" "$text_color_equal" "$text_color_true" "$text_shadow" "$selection_color" > "$HOME/Downloads/macsploit_theme_zackdaquack.js"
    echo "$(tput setaf 2)Theme has been saved to Downloads as 'macsploit_theme_zackdaquack.js'$(tput sgr0)"
  
    read -p "Would you like to install your theme now? (Y/N): " ain
    if [ "$ain" == "Y" ] || [ "$ain" == "y" ]; then
        install_theme
    fi

elif [ "$smode" == "I" ] || [ "$smode" == "i" ]; then
    install_theme
else
    echo "$(tput setaf 1)Mode not recognized! Rerun the script and select a valid mode!$(tput sgr0)"
    echo ""
fi
