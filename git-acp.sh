#!/bin/bash -e


# Perform git add, git commit w/ message, and git push to argument.
# Argument: name of git branch to push to
# Use with the -s option to suppress custom commit message. Example: git-acp master -s


MESSAGE="default"
BRANCH=$1
SUPPRESS=0

# argument check
if [[ $# -eq 0 ]] ; then
    echo 'Missing argument: branch'
    exit 1
fi

# handle option flags
while getopts ":s" option; do
	case $option in
	  	s)
			if [[ $# -eq 0 ]] ; then
    			echo 'Missing argument: branch'
    			exit 1
			fi
            SUPPRESS=1;
            BRANCH=$2;
			;;
	  	/?)
	  		echo "Invalid option: -$OPTARG";
	  		exit 1;;
	esac
done

if [ "$SUPPRESS" = 0 ]; then
    read -p "Enter commit message: " MESSAGE;
fi

git add -A
git commit -m "${MESSAGE}"
echo
git push origin "$BRANCH"

exit 0
