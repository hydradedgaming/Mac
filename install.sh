
Copy code
#!/bin/bash

say_hi() {
    echo -e "\033[32mhi\033[0m"
}

main() {

    echo -n "Enter text: "
    read -r text
    
    # Check if input is "yes" or "Yes"
    if [[ "$text" == "yes" || "$text" == "Yes" ]]; then
        echo -e "\033[32mok hi bro\033[0m"
    else
        say_hi
    fi
}

main
