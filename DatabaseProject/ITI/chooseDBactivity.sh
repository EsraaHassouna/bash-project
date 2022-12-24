#!/bin/bash


echo "choose the action you want to do"
echo "1) create table"
echo "2) list table"
echo "3) drop table"
echo "4) insert into table"
echo "5) select from table"
echo "6) delete from table"
echo "7) update table"
read choise


	case $choise in
	
	  1) ./createtable.sh ;;
	  2) ./ITI/listtable.sh ;; 
	  3) ./ITI/droptable.sh;;
	  4) ./ITI/insertintotable.sh ;;
	  5) ./ITI/selectfromtable.sh ;;
	  6) ./ITI/deletefromtable.sh ;;
	  1) ./ITI/updatetable.sh ;;
	  *) echo "Wrong Choice! enter one two or three" ;
             ./chooseDBactivity.sh;;	

	esac
