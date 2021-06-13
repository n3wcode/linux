#!/bin/bash 
############
# n3wcode 2021-06-12

INPUT=$1
LOCATION=$(pwd)
NAME=$(echo $INPUT | cut -d'.' -f1) 

WEBBEGINING () {
echo '<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=charset=utf-8"/>
<title>PAGE</title>
</head>
<body>' >> $LOCATION/$NAME.html
}


WEBMAIN () {
while read -r LINE 
do
        #echo "<p><font face="Courier New"><font color="blue"><font size="4">$LINE</p>" >> $LOCATION/$NAME.html
        echo "<p><font face="Monospace"><font color="midnightblue"><font size="6">$LINE</p>" >> $LOCATION/$NAME.html
done < $LOCATION/$INPUT
echo "<p><font face="Courier New"><font color="black"><font size="2">$(date)</p>" >> $LOCATION/$NAME.html
}

TEST () {
# font test
#font-family: monospace;
#font-family: ui-monospace;
#monospace:  Fira Mono, DejaVu Sans Mono, Menlo, Consolas, Liberation Mono, Monaco, Lucida Console, monospace.
#.monospace {
#  font-family: "Lucida Console", Courier, monospace;

VAR1='"font-family:Courier; color:Midnightblue; font-size: 18px;"'
VAR2='"font-family:Monospace; color:Midnightblue; font-size: 18px;"'
VAR3='"font-family:DejaVu Sans Mono; color:blue; font-size: 18px;"'
echo "<p style=${VAR1}>123456789 test</p>"  >> $LOCATION/$NAME.html
echo "<p style=${VAR1}>--------- ....</p>"  >> $LOCATION/$NAME.html
echo "<p style=${VAR2}>123456789 test</p>"  >> $LOCATION/$NAME.html
echo "<p style=${VAR2}>--------- ....</p>"  >> $LOCATION/$NAME.html
echo "<p style=${VAR3}>123456789 test</p>"  >> $LOCATION/$NAME.html
echo "<p style=${VAR3}>--------- ....</p>"  >> $LOCATION/$NAME.html
}



WEBEND () {
echo '
</body>
</html>
' >> $LOCATION/$NAME.html

}

if test "$INPUT" = ""
then
	echo 'ENTER: "./txt2html.sh /path/to/your/textfile.txt"'
	exit 1
else
	if [ -f $LOCATION/$NAME.html ]
	then 
		rm $LOCATION/$NAME.html
		touch $LOCATION/$NAME.html
		WEBBEGINING
		WEBMAIN
		WEBEND
	else
		touch $LOCATION/$NAME.html
                WEBBEGINING
                WEBMAIN
		WEBEND
	fi

fi


