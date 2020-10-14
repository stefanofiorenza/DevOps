#! /usr/bin/env bash

VALUE=10

if [ "$VALUE" -lt 0 ]; then
    echo "VALUE is less than 0"
else
    echo "VALUE is greater than 0"
    if [ "$VALUE" -le 10 ]; then
        echo "VALUE is less than or equal to 10"
    else
        echo "VALUE is greater than 10"
    fi # end of nested if block
fi # end of parent if block