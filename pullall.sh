#!/bin/bash
x=`ls`
for i in $x; do
  echo "";
  echo "------$i-----";
  if [ -d "$i" ]; then 
    cd $i;
    if [ -e ".git" ]; then
      git pull origin master;
      echo "------$i pull finished----";

    fi
    cd ..;
  fi
done
