#!/bin/bash


function min(){
    local ARRAY=$1[@]
    DATA=("${!ARRAY}")
  
    : '
    for i in "${DATA[@]}" ; do
        echo "element: $i"
    done    
    '

    MIN=${DATA[0]}
    # echo "$MIN"

    for i in "${DATA[@]}" ; do
       if ((  $i <  $MIN ))
        then
            # echo "found lower $i  $MIN"
            MIN=$i
        fi
    done 

   #  echo "MIN IS $MIN"
    echo "$MIN"

}

declare -a testData=(9 100 -1 -100 88 6 55)
# min testData

echo $(min testData)

<< 'TESTS'
function min(){

    local ARRAY=$1[@]

    : '
    local ARRAY=$1[@]
    DATA=("${!ARRAY}")

    #local let MIN=${DATA[0]}
    # echo $MIN
    

    A=("${!ARRAY}")  # copy values previously echoed in a new array =(elem1, elem2)

    for i in "${A[@]}" ; do
        echo "element: $i"
    done  

  for i in "${DATA[@]}" ; do

       # echo $((  $i <  $MIN ))
        echo  $i 

        if ((  $i <  $MIN ))
        then
            MIN=$i
        else
            echo "$i And $MIN Min stays as $MIN "
        fi

    done
  

: '


'
   # return $(( $MIN ))
}

declare -a testData=(9 100 -1 -100 88 6 55)
# echo $(min testData)

: '
function max(){
    
}

function sum(){
    
}

function avg(){
    
}
'
TESTS