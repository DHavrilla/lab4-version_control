#!/bin/bash
#Credit: Brendan Gregg
echo "Guess a number between 1 and 100"
typeset -i num=0
(( answer = RANDOM % 100 + 1))
guess=0
while (( guess != answer)); do
	num=num+1
	read -p "Enter guess $num: " guess
	if (( guess < answer )); then
		echo "Higher..."
	elif (( guess > answer)); then
		echo "Lower..."
	fi
done
echo -e "Nice Job! Took you $num guesses.\n"
