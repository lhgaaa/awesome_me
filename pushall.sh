#!/bin/bash
x=`ls`
for i in $x; do
  echo $i;
  if [ -d "$i" ]; then 
    cd $i;
    git add --all;
    git commit -m "auto commit";
    git push origin master;
    echo "$i push finished";
  else
    echo "$i is not a dir";
  fi
done
