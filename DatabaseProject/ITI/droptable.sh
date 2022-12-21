#!/bin/bash

subdircount=$(find . -not -path '*/.*' | wc -l)
if (("$subdircount" == 1 ))
then
    echo "nothing to be deleted, returning to the connect menue!"
cd ..

break
else

echo "choose table you want to remove: "
  ls 
fi

read tname
if [[ -f $tname ]] 
then
rm -f $tname
rm -f $tname_meta
echo removing done
cd ..
else
echo there is no table by this name
cd ..
fi
