#!/usr/bin/env bash
# File: guessinggame.sh

function get_file_counts {
	# Count all files (including hidden) except directories
	echo $(ls -aF | grep -v  '/' | wc -l)
}

file_counts=$(get_file_counts)

echo -e "\nHello! How many files do you think there are in the current directory?"

while read answer
do
	if ! [[ "$answer" =~ ^[0-9]+$ ]]
	then
		echo "Please enter a valid interger number and try again!"
	elif [[ $answer -gt file_counts ]]
	then
		echo "Hmm...$answer is too high. Please make another guess!"
	elif [[ $answer -lt file_counts ]]
	then
		echo "Hmm...$answer is too low. Please make another guess!"
	elif [[ $answer -eq file_counts ]]
	then
		echo "The number of files in the current directory is $file_counts."
		echo  -e "Congratulations!!\n"
		break
		
	fi
done

