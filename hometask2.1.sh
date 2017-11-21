#!/bin/bash

# for
for i in "$@"
	do
	echo "$i"
done

# until
All=($@)
Num=${#@}
echo
until [ -z "$1" ]
	do
	echo "$1"
	shift
done

# while
count=0
echo
while [ "$count" -lt "$Num" ]
	do
	echo ${All[count]}
	cou=$(( count + 1 ))
done

exit 0
