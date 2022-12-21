#!/bin/bash

subdircount=$(find . -not -path '*/.*' | wc -l)
if (("$subdircount" == 1 ))
then
    echo "nothing to be deleted, returning to the connect menue!"
cd ..

break
else

echo "choose database you want to drop: "
  ls 
fi

read dbname
if [[ -d $dbname ]] 
then
rm -r $dbname

echo removing done
cd ..
else
echo there is no database by this name
cd ..
fi
