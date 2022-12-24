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
echo "Column name" >> ./${tname}_meta
typeset -i cnumber
let l=1
let pk=1 #primary key exist 

read -p "Enter the No. of columns" cnumber

while [ $l -le $cnumber ]
do
	echo "Line No.$l"	
	
	echo "Column name"
	read metadata

#check datatype
	select var in "int" "str"
	    do
	      case $var in
		"int" ) colType="int";break;;
		"str" ) colType="str";break;;
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
		    echo "Column;Datatype;PK" >> ./${tname}_meta
		    break;;
		    "n" ) PK= ""
		   echo "Column;Datatype;" " " >> ./${tname}_meta 
                    break;;
	    * ) echo "This is wrong write another one" ;;
		  esac
	        done
	  else
	        echo "Column;Datatype;" " " >> ./${tname}_meta
	  fi

	  (( l++ ))

          echo metadata >> ./${tname}_meta


done

	
echo "table created succefully"
echo "Column;Datatype;PK" >> ./${tname}_meta
