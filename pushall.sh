#!/bin/bash
x=`ls`
for i in $x; do
  echo "";
  echo "------$i-----";
  if [ -d "$i" ]; then 
    cd $i;
    if [ -e ".git" ]; then
      git add --all;
      git commit -m "auto commit";
      git push origin master;
      echo "------$i push finished----";

    fi
    cd ..;
  fi
done
