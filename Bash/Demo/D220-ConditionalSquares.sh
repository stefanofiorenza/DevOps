#! /usr/bin/env bash

#1. If Block (No Else)
: '
PROCEED=YES
if [ "$PROCEED" = "YES" ]
then
    echo "Performing task..."
fi
'


#2. If-Else-If
# See other comparison operators https://www.shellscript.sh/quickref.html

: ' 
VALUE=-10
if [ "$VALUE" -lt 0 ]; then
    echo "VALUE is less than 0"
elif [ "$VALUE" -eq 0 ]; then
    echo "VALUE is 0"
else
    echo "VALUE is greater than 0"
fi
'	

	

VALUE=10
if [ $VALUE -ge 1 ]  && [ $VALUE -le 10  ]; then
    echo "VALUE is in interval"
else
    echo "VALUE is NOT in interval"
fi

