#!/bin/bash -e

# Create a directory with chosen name and a -
# remote git repositiory for it with the same name

# Make directory
read -p "Enter Directory Name:" NEW_DIR
mkdir $NEW_DIR
cd $NEW_DIR

# Setup git
git init
echo "# ${NEW_DIR}" >> README.md

#Create remote Git repo from command line
read -p "Enter Git username:" USER

# git api request creates remote repo
curl -u "$USER" https://api.github.com/user/repos -d '{"name":"'${NEW_DIR}'"}'

git remote add origin https://github.com/"$USER"/"$NEW_DIR".git
