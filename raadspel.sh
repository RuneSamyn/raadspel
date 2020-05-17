#!/bin/bash
# opdracht 2 T Embeded Systems
# raadspel

read -p 'geef je naam in ' -a name
date=`date '+%m-%d-%Y %H:%M:%S'`
# generate random number between 1 and 10
getal=$(($RANDOM % 10 + 1))
# getal=8

for i in 1 2 3; do
	# ask the player for a number
	read -p 'Raad welk getal het is ' -a guess

	if [[ "$getal" -eq "$guess" ]];then
		echo '==========================' >> scoreboard.txt
		echo "name = $name" >> scoreboard.txt
		echo "date = $date" >> scoreboard.txt
		echo "success" >> scoreboard.txt
		echo "attempts = $i" >> scoreboard.txt
		echo '==========================' >> scoreboard.txt
		break
	elif [[ "$getal" -gt "$guess" ]];then
		echo "greater"
	elif [[ "$getal" -lt "$guess" ]];then
		echo "less"
	fi
done
echo $getal
echo $guess
