 
  echo -e "Enter Table Name: \n"
  read tname
  echo -e "Enter Column number: \n"
  read cnumber
  echo "Column;Datatype;PK" >> tname_meta

  if [[ $flag -eq 0  ]]
  then
    echo "Not Found"
    ls
  else
    echo -e "Enter primary key: \n"
    read pk
    
    if [[ $l -le $cnumber ]]
    then
      echo "Value Not Found"
      ls
    else
        echo -e "Enter new Value to set: \n"
        read newValue
        
        echo $oldValue
        echo "Column;Datatype;PK" >> tname_meta

        echo "Row Updated Successfully"
        tablesMenu
      fi
    fi
