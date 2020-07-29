#!/usr/bin/bash

count=$(ls | wc -l)

function correct {
	echo "Congrats your guess is correct"
}

let f1=0
while [[ $f1 -eq 0 ]]
do
       	echo $'\nGuess how many files are there in a directory'
	read guess
        let found=0
	while [[ $found -eq 0 ]] 
        do
		if [[ $guess -eq $count ]]
		then
			correct
			let found=1
			let f1=1
		elif [[ $guess -lt $count ]]
		then
			echo "Your guess is too low"
			let found=1
		else
			echo "Your guess is too high"
			let found=1
		fi
	done
done
