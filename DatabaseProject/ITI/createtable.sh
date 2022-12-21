#!/bin/bash

read tablename 

if [[-f "./$tablename"]]
then 
	cd $tablename.sh
else 
	touch $tablename.sh
fi 
./tablename 

