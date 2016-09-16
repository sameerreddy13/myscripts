#!/bin/bash -e


#Perform git add, git commit with default message, and git push to argument.
#Argument: name of git branch to push to
#Use with the -c option to input custom commit message. Example: gitACP master -c


MESSAGE="default"
BRANCH=$1

# handle option flags
while getopts ":c" option; do
	case $option in
	  	c)
			read -p "Enter commit message: " MESSAGE
			;;
	  	/?)
	  		echo "Invalid option: -$OPTARG";
	  		exit 1;;
	esac
done

git add -A

git commit -m "${MESSAGE}"
echo
git push origin "$BRANCH"

exit 0
