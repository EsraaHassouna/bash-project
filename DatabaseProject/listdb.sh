#!/bin/bash

subdircount=$(find . -not -path '*/.*' | wc -l)
if (("$subdircount" == 1 ))
 then
     echo " This database does not exist"
 ./ITI/chooseDBactivity.sh

else
     echo "Displaying your List"
ls

./ITI/chooseDBactivity.sh
fi



