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
<<<<<<< HEAD
echo "Column name" >> ./${tname}_meta
=======
echo "Column;Datatype;PK" >>./$tname
>>>>>>> 67db699cc7a40bd1cebf4230f8b2a16eed8ad7d6
typeset -i cnumber
let l=1
let PK=1 #primary key exist 

read -p "Enter the No. of columns" cnumber

while [ $l -le $cnumber ]
do
	echo "Line No.$l"	
<<<<<<< HEAD
=======
	echo "ColumnName"
	read colname
	
>>>>>>> 67db699cc7a40bd1cebf4230f8b2a16eed8ad7d6
	
	echo "Column name"
	read metadata

#check datatype
	select var in "int" "str"
	    do
<<<<<<< HEAD
	      case $var in
		"int" ) colType="int";break;;
		"str" ) colType="str";break;;
=======
	    set -x
	     case $var in 
		"int" ) 
		colType="int"
		 ;;
		"str" ) 
		colType="str" 
		;;
>>>>>>> 67db699cc7a40bd1cebf4230f8b2a16eed8ad7d6
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
<<<<<<< HEAD
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
=======
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
>>>>>>> 67db699cc7a40bd1cebf4230f8b2a16eed8ad7d6
	  fi

	  (( l++ ))

          echo metadata >> ./${tname}_meta


<<<<<<< HEAD
done

	
echo "table created succefully"
echo "Column;Datatype;PK" >> ./${tname}_meta
=======
echo "table created succefully"
echo "Column;Datatype;PK" >>./$tname

set +x
>>>>>>> 67db699cc7a40bd1cebf4230f8b2a16eed8ad7d6
