#!/bin/bash


let flag=0

#check if file exists
while [[ $flag -eq 0 ]]
do
	echo "enter database name"
	read dbname 

	if [[ -d $dbname ]];
	then
		echo "Name exisit! choose anothe DB name "	
	else 
		mkdir $dbname
		(( flag++ ))
	

	fi 
done
./ITI/createtable.sh
echo "database created succefully"



