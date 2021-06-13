#!/bin/bash
# USAGE: ./factorial.sh [your_number]

INPUT="$1"
if test "$INPUT" = ""
then
	echo 'USAGE: "./factorial.sh [your_number]"'
	exit 1
else
	counter=$1
	factorial=1
	while [ $counter -gt 0 ]
	do
		factorial=$(( $factorial * $counter ))
		counter=$(( $counter -1 ))
	done
fi
echo $factorial
