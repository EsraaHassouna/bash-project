echo please enter the database file
read dbname

#check if file exists
if [[ -d $dbname ]]
then 
	echo "Database aready exists"
	./dbcreation

else 

 	mkdir $dbname	
	cd $dbname

fi

