#!/bin/bash -e


#Perform git add, git commit with message, and git push to argument.
#Argument: name of git branch to push to
#Use with the -s option to suppress custom commit message. Example: git-acp master -c


MESSAGE="default"
BRANCH=$1
SUPPRESS=false

# handle option flags
while getopts ":s" option; do
	case $option in
	  	c)
            SUPPRESS=true;
			;;
	  	/?)
	  		echo "Invalid option: -$OPTARG";
	  		exit 1;;
	esac
done

if ["$SUPPRESS" = true] ; then
    read -p "Enter commit message: " MESSAGE;
    BRANCH=$2;
fi

git add -A
git commit -m "${MESSAGE}"
echo
git push origin "$BRANCH"

exit 0
