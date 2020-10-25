#! /usr/bin/env bash


# See https://tldp.org/LDP/abs/html/comparison-ops.html
# File test operators https://tldp.org/LDP/abs/html/fto.html

# Using artimetic Expansion

#1. Conditional with arithmetic Expansion
: '
VALUE=12

if (( ( $VALUE >= 1 ) && ( $VALUE <= 10 ) ))
then
    echo "VALUE in interval"
else
    echo "VALUE out of interval"  
fi # end of parent if block
'

#2. Conditional with arithmetic Expansion
# (Better version of test)Double brackets use an internal command test instead of new process 
VALUE=12

if [[ [ $VALUE >= 1 ] && [ $VALUE <= 10 ]  ]] 
then
    echo "VALUE in interval"
else
    echo "VALUE out of interval"  
fi # end of parent if block