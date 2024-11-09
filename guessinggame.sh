#!/bin/bash

# Function to ask the user to guess the number of files in the current directory
guessing_game() {
    local correct_guess=$(ls -1 | wc -l)  # Get the number of files in the current directory
    local user_guess=0

    echo "Guess the number of files in the current directory:"

    # Loop to continuously ask for guesses until the correct one is entered
    while [ $user_guess -ne $correct_guess ]; do
        read -p "Enter your guess: " user_guess
        if [ $user_guess -lt $correct_guess ]; then
            echo "Your guess is too low! Try again."
        elif [ $user_guess -gt $correct_guess ]; then
            echo "Your guess is too high! Try again."
        else
            echo "Congratulations! You guessed the correct number of files."
        fi
    done
}

# Call the function to start the game
guessing_game
