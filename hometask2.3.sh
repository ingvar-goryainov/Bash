#!/bin/bash

find $1 > ex4_2out.txt
echo > output.txt
while read line; do
  COMMAND=`sudo wc -l $line | cut -d' ' -f1` #count number of lines in file
  MATCH=`echo $line | sed s/[^/]//g | wc -c` #count number of symbol "/" in line
  PR="" 
 
  if [[ $MATCH -eq 2 ]]
   then
    PR="  "
  elif [[ $MATCH -eq 3 ]]
   then
    PR="   "
  elif [[ $MATCH -eq 4 ]]
   then
    PR="    "
  elif [[ $MATCH -eq 5 ]]
   then
    PR="     "
  elif [[ $MATCH -eq 1 ]]
   then
    PR=" "
  elif [[ $MATCH -eq 6 ]]
   then
    PR="      "
  fi

  if [[ $COMMAND -eq 0 ]]
  then
   echo "$PR $line" >> output.txt
  elif [[ `file "$line" | grep bit` ]]
  then
   echo "$PR $line is binary" >> output.txt
  else
   echo "$PR $line has $COMMAND lines" >> output.txt
  fi

done < ex4_2out.txt

less output.txt  #print file with final result

exit 0
