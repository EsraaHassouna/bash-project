#!/bin/bash

echo "choose from 1:3"
read choise

	select choice in "createdatabase" "listdatabase" "dropdatabase"
	    do
	      case $choise in
		 1) ./createdatabase.sh;break;;
		 2) ./listdb.sh;break;;
		 3) ./dropdatabase;break;;
		* ) echo "Wrong Choice! enter one two or three";;
	      esac
	    done

