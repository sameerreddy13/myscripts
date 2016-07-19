#!/bin/bash -e

#Perform git add, git commit with default message, and git push to argument
#Use with the -c option to input custom commit message. Example: gitACP -c testing master

MESSAGE="default"
read -p "Enter branch name:" BRANCH
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
git commit -m "$MESSAGE"
echo
git push origin "$BRANCH"

exit 0
