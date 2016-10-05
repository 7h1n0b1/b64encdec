#!/bin/bash

#################################################################
# Author:- 7h1n0b1/Mayank Sharma 								#
# Contact me with any suggestions or queries that you may have: #
# 7h1n0b1@gmail.com 											#
#################################################################

######################
# Defining Functions #
######################

#############################################################################################
f_enc()
{
	lines=`wc -l $path | grep -o '[0-9]*'` 		# Check the number of lines in a file.
	touch operation.txt 						# Create a file to store the output in.
	i=1
	while [ $i -le $lines ]
	do
    	enc=`sed $i'q;d' $path | base64 &`
    	echo $enc >> operation.txt
   		i=$[$i+1]
	done
	echo "Done..."
	echo "Output saved in operation.txt"
	
}
#############################################################################################
f_dec()
{
	lines=`wc -l $path | grep -o '[0-9]*'` 		# Check the number of lines in a file.
	touch operation.txt 						# Create a file to store the output in.
	i=1
	while [ $i -le $lines ]
	do
    	dec=`sed $i'q;d' $1 | base64 --decode  &`
        echo $dec >> operation.txt
   		i=$[$i+1]
	done
	echo "Done..."
	echo "Output saved in operation.txt"
}
#############################################################################################

############################
# Program Starts from Here #
############################

echo "Base64 Encoding and Decoding."
echo "1. Encode"
echo "2. Decode"
echo "Select an option and press [Enter]"
echo -n "> "
read opt
if [ $opt = "1" ]; then							# When Encoding is selected.
	while true 									# Loop will continue until right path is entered.
	do
		echo -n "Enter file name > "
		read -e path 								# Get the path.
		if [ -f $path ]; then 					# Check if the path is correct.
			f_enc path 							# Calling function for encoding the file.
			break
		else
			echo "There is something wrong with your file name."
		fi
	done
elif [ $opt = "2" ]; then 						# When decoding is selected.
	while true 									# Loop will continue until right path is entered.
	do
		echo -n "Enter file name > "
		read path 								# Get the path.
		if [ -f $path ]; then 					# Check if the path is correct.
			f_dec path 							# Calling function for decoding the file.
			break
		else
			echo "There is something wrong with your file name."
		fi
	done
else
	echo "Invalid option selected"
fi
