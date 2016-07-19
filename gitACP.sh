#!/bin/bash 

#Perform git add, git commit with default message, and git push to argument

if [ $# -eq 0 ]
  then
    echo "Invalid: provide git branch"
    exit 1
fi

git add -A
echo
echo "Committing with message: 'default'"
echo
git commit -m "default"
echo
git push origin "$1"

exit 0
