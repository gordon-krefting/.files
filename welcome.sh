#!/bin/sh
HOST=`uname -n`
WIDTH=`tput cols`

i=1
while [ "$i" -le $WIDTH ]
do
	printf "-"
	i=$(( $i + 1 ))
done

if command -v figlet > /dev/null 2>&1; then
	figlet -cW -w$WIDTH -f slant "$HOST"
else
	echo "Host: $HOST"
fi

