#!/bin/bash

#1) Function declaration: 2 styles
<< 'DECLARATION'
demo_function(){
    echo 'demo_function called'
}

function demo_function_2 {
    echo 'demo_function2 called'
}

demo_function
demo_function_2
DECLARATION

#2) Passing input (args) to function
<< 'ARGS'
demo_function_expl_args(){

    echo 'Args are parsed same way as scripts with $ symbol ';
    echo 'received args: '$*

    i=0
    for ARG in $* # all args will be printed 
    do
        let i=i+1
	    echo " Arg N $i  = $ARG"
    done

}
demo_function_expl_args 1 2 3 4 5
ARGS

#3) Passing array as Args 
<< 'ARRAY-AS-ARGS'
#3.1) passing the array as many different args and copy to local var array
function arrayAsArgs_Parsedvalues(){
    parsedDataAsArray=("$@")
    echo ${parsedDataAsArray[@]}
}
echo 'arrayAsArgs_Parsedvalues 1 2 3 4 5 : '
arrayAsArgs_Parsedvalues 1 2 3 4 5


#3.2) passing an array variable (need Parameter Expansion to evaluate var)
function arrayAsArgs_AsRefVariable(){  
  
    #copy in local array var
    local ARRAY=$1[@]

    # both those will not work...
    echo 'With $ARRAY: ' $ARRAY
    echo 'With $ARRAY[@]: ' $ARRAY[@]

    # need to use parameter Expansion ${!VAR_TO_INSPECT} to evaluate in sequence of values   
    echo "Using parameter Expansion I can fetch all values in ref variable ${!ARRAY}"
    A=("${!ARRAY}" )   # copy values previously echoed in a new array =(elem1, elem2)

    for i in "${A[@]}" ; do
        echo "element: $i"
    done   
}
declare -a ARR=(1 2 3 4 5)
echo 'arrayAsArgs_AsRefVariable A : '
arrayAsArgs_AsRefVariable ARR
ARRAY-AS-ARGS


#4.1) Return result (exit or return)
<< 'RETURN'
function sum() { # function can return result what are available in same way as exit code
  echo "Parameters passed: $*"
  return $(($1+$2))
}
sum 4 5
echo $?
RETURN

#4.2) echo as return and then capture with $()

function sum() { # function can return result what are available in same way as exit code
  res=$(($1+$2))
  echo $res
}
<< 'RETURN-ECHO'
myVarSum=$(sum 4 5)
echo $myVarSum
RETURN-ECHO


#5) Function cant be empty
<< 'EMPTY_FUNCTION_BODY'
function cantBeEmpty(){
    # function body cant be empty. This will trigger exception 
}
EMPTY_FUNCTION_BODY




