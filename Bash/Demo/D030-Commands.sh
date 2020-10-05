#! /usr/bin/env bash

#1) every command returns an exit state:
# exit 0 = true 
# exit (any number other than zero) means command was failing returning a non-zero error code.

    # echo 'whatever message'; # this will return exit 0
    # echo "Previous command ended with $? exit code";  # is possible to retrieve last command exit code with special var $?


#2) using this feature is possible to concatenate commands

   #  echo 'this will succeed' && grep 'a random string' this_file_doesnt_exist.txt && echo 'previous failed (exit != 0) . So you will never read this';
   #  echo 'when a command fails you will read a standard-error message, but script doesnt stop';


#3) Commands can be of different type:
   # type cd;

#4) Is possible to get the path to the command for binaries:
   # type cd;


#5) Commands might runt with args


#6) Script too takes optional args


#7) Script can give an exit code (otherwise will default to zero)


#8) Is possible to run a (miniscript) inside brackets and assign its output to a variable

    FILES_IN_THIS_DIR=$( ls )
    echo $FILES_IN_THIS_DIR;