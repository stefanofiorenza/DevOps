#1. test and shortcut

[ 11 -lt 9 ]
echo $?



#2. If Block (No Else)
: '
PROCEED=YES
if [ "$PROCEED" = "YES" ]
then
    echo "Performing task..."
fi
'


#3. If-Else-If
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

	
