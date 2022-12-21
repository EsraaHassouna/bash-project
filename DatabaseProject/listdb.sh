echo options in our project 
echo please choice one of 3 options 1-create database  2-list database  3-drop database

read choise

case $choise in 
	1)cd databaseFile.sh 
	;;
	2)echo list 
	;;
	3)echo drop
	;;
	*)
	echo please choose from 1 to 3 only 
	;;
esac	
