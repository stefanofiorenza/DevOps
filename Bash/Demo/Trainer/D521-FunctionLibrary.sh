#!/bin/bash
external_function (){
    echo "passed $1 Arg in External function"
    return $RESULT
}

export -f external_function