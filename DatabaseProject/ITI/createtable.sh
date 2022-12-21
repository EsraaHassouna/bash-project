#!/bin/bash
 
let flag=0

while [[ $flag -eq 0 ]]
do
	echo "enter table name"
	read tname 

	if [[ -f $tname ]];
	then 
		echo "Name exisits! choose another name for the table "
	else
		touch $tname
		touch tname_meta
		(( flag++ ))
	fi 
done
echo "Column;Datatype;PK" >> tname_meta

typeset -i cnumber
let l=1
let pk=1 #primary key exist 

read -p "Enter the No. of columns" cnumber

while [ $l -le $cnumber ]
do
	echo "Line No.$l"	
	echo "enter the column data as follows:"
	echo "Column;Datatype;PK"
	read metadata
	echo metadata >> tname_meta
	(( l++ ))

done


