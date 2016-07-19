#!/bin/bash -e

#Perform git add, git commit with default message, and git push to argument

BRANCH="$1"
MESSAGE="default"

while getopts ":c:" option; do
	case $option in
	  	c)
			BRANCH="$3"
			MESSAGE="$2"
			;;
	  	/?)
	  		echo "Invalid option: -$OPTARG";
	  		exit 1;;
	  	/:)
			echo "Missing argument: commit message";
			exit 1;;
	esac
done

if [ $# -eq 0 ]
	then
		echo "Invalid: provide git branch"
		exit 1
fi

git add -A
echo
echo "Committing with message:'"$MESSAGE"'"
echo
git commit -m "$MESSAGE"
echo
git push origin "$BRANCH"

exit 0
