#!/bin/bash -e

#Perform git add, git commit with default message, and git push to argument
#Use with the -c option to input custom commit message. Example: gitACP -c testing master

MESSAGE="default"
read -p "Enter branch name:" BRANCH

# handle option flags
while getopts ":c:" option; do
	case $option in
	  	c)
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

git add -A
git commit -m "$MESSAGE"
echo
git push origin "$BRANCH"

exit 0
