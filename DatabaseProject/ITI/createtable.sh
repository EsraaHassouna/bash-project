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
		touch ${tname}_meta
		(( flag++ ))
	fi 
done
echo "Column;Datatype;PK" >>./$tname
typeset -i cnumber
let l=1
let PK=1 #primary key exist 

read -p "Enter the No. of columns" cnumber

while [ $l -le $cnumber ]
do
	echo "Line No.$l"	
	echo "ColumnName"
	read colname
	
	
#check datatype
	select var in "int" "str"
	    do
	    set -x
	     case $var in 
		"int" ) 
		colType="int"
		 ;;
		"str" ) 
		colType="str" 
		;;
		* ) echo "Wrong Choice" ;;
	      esac
	      
	    done
	    

#check primary key
	 if [[ $PK -eq "" ]]; then
	      echo -e "Is it a primary key?"
	      select var in "y" "n"
  	        do
		  case $var in
		    "y" ) PK="PK";
		    echo "Column;Datatype;PK" >>./$tname
		    ;;
		    "n" ) PK=""
                    ;;
		    * ) echo "This is wrong write another one" ;;
		  esac
	        done
	  else
	        echo $colname";" $colType";" $PK>>./$tname
	        echo $colname";" $colType";" $PK>>./${tname}_meta
	  fi

	  (( l++ ))

done


echo "table created succefully"
echo "Column;Datatype;PK" >>./$tname

set +x
