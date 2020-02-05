#!/usr/bin/env bash
#File: guessinggame.sh

function guessinggame {
	
	greentext="\033[32m"
	normal="\033[0m"

	file_count=$(ls | wc -l)
	echo "How many files are in the current working directory?"
	read -p "Enter your guess: " -r guess

	while [[ $guess -ne $file_count ]]
	do
		if [[ $guess -lt $file_count ]]
		then
			echo "Too low!"
			read -p "Guess again: " -r  guess
		fi

		if [[ $guess -gt $file_count ]]
		then
			echo "Too high!"
			read -p "Guess again: " -r guess
		fi

	done

	#echo "Congratulations! You've answered correctly."
	echo -e $greentext"Congratulations! You've answered correctly"$normal
}

guessinggame 
