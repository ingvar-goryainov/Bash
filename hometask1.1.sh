#!/bin/bash

echo -n "Enter your salary $salary"
read salary

if [ "$salary" -lt "5000" ]
then
        echo "Your tax is  0%"
elif [[ "5000"  -le  "$salary" && "$salary" -lt "30000" ]]
then
        echo "Your tax is 10%"
tax=$(expr $salary*0.1 | bc)
elif [ "$salary" -gt "30000" ]
then
        echo "Your tax is 20%"
tax=$(expr $salary*0.2 | bc)
fi

exit 0