#!/bin/sh

HOST=`uname -n`
WIDTH=`tput cols`
UPTIME=`uptime | sed -E 's/^[^,]*up *//; s/, *[[:digit:]]* users.*//; s/min/minutes/; s/([[:digit:]]+):0?([[:digit:]]+)/\1 hours, \2 minutes/' `

if command -v ip > /dev/null 2>&1; then
	IP=`ip a | grep glo | awk '{print $2}' | head -1 | cut -f1 -d/`
elif command -v ipconfig > /dev/null 2>&1; then
	IP=`ipconfig getifaddr en0`
else
	IP="unknown"
fi

i=1
while [ "$i" -le $WIDTH ]
do
	printf "-"
	i=$(( $i + 1 ))
done

if figlet -cW -w$WIDTH -f slant "$HOST" > /dev/null 2>&1; then
	figlet -cW -w$WIDTH -f slant "$HOST"
else
	echo "Host.........: $HOST"
fi

echo ""
echo "Date........: `date +"%A, %e %B %Y, %r"`"
echo "Uptime......: $UPTIME"
echo "IP..........: $IP"

i=1
while [ "$i" -le $WIDTH ]
do
	printf "-"
	i=$(( $i + 1 ))
done
