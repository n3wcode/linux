#!/bin/bash

INPUT="$1"

# 1 #
IN1 () {
while IFS= read -r file
do
	printf '%s\n' "$file"
done < "$INPUT"
}

# 2 #
IN2 () {
cat $INPUT | while read line 
do
	echo "$line"
done 
}

# 3 #
IN3 () {
if test "$INPUT" = ""
then
	echo 'ENTER: "./read.sh /path/to/your/file"'
	#exit 1
else
while read -r line 
do
	read -r  "line"
	echo "$line"
done < $INPUT
fi
}
IN3 
