#!/bin/bash -e
# http://wiki.bash-hackers.org/howto/getopts_tutorial
echo "$@"
while getopts ":a:" option; do
  if [ "$option" == "a" ]
  then 
  	echo "option a"
  else
  	echo "not a"
  fi
  echo "$option"
done