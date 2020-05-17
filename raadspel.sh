#!/bin/bash
# opdracht 2 T Embeded Systems
# raadspel

getal=$(($RANDOM % 10 + 1))
read -p 'Raad welk getal het is ' -a guess

if [[ "$getal" -eq "$guess" ]];then
	echo "true"
else
	echo "false"
fi
