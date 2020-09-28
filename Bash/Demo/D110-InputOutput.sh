#! /usr/bin/env bash

#1) Comment
# this is a comment and will be not executed by shell interpreter

#2) Comment on Many lines
: "
	this is a comment on many lines
	- starts with colon #no Leading space
	- then empty space  # very important!! 
	- and then single quote  	
	
	echo \"this will be not printed on std out\"
	Careful that meaningful characters should be escaped	
" 


#3) Here doc multiline Comment 
<< 'A-MULTILINE-COMMENT'
    Everything inside the
    HereDoc body is
    a multiline comment
A-MULTILINE-COMMENT


#################################
#########INPUT OUTPUT ###########

#1) this is connected to standard output (terminal)
echo "this will be printed on std out"


#2) read from terminal into variable
# echo -n "Enter a name:"
# read NAME
# echo "Your name is:" $NAME



#############################################
#########INPUT OUTPUT TO/FROM FILE###########

echo -n "Enter a filename where you want to save next input";
read FILENAME;

cat > $FILENAME