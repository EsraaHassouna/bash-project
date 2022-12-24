#!/bin/bash


echo "choose the action you want to do"
echo "1) create database"
echo "2) list database"
echo "3) drop database"
read choise


	case $choise in
	
	  1) ./createdatabase.sh ;; 
	  2) ./listdb.sh ;;
	  3) ./dropdatabase ;;
	  *) echo "Wrong Choice! enter one two or three" ;
             ./choosefromlist.sh ;;	

	esac
