#!/usr/bin/env bash

function get_file_count {
    local count=$(ls -1 | wc -l)
    echo $count
}

function check_input {
    # Verify if input is a number
    if ! [[ $1 =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number"
        return 1
    fi
    return 0
}

# Get actual file count
file_count=$(get_file_count)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

while true; do
    read guess
    
    # Validate input
    if ! check_input $guess; then
        continue
    fi
    
    # Compare guess with actual count
    if [[ $guess -eq $file_count ]]; then
        echo "Congratulations! That's the correct answer!"
        break
    elif [[ $guess -gt $file_count ]]; then
        echo "Your guess is too high. Try again:"
    else
        echo "Your guess is too low. Try again:"
    fi
done
