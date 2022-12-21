#!/bin/bash

subdircount=$(find . -not -path '*/.*' | wc -l)
if (("$subdircount" == 1 ))
 then
     echo " This table does not exist"
 cd ..
else
     echo "Displaying your List"
ls
cd ..
fi
