#!/bin/bash -e

# Create a directory with chosen name and a -
# remote git repositiory for it

# Make directory
read -p "Enter Directory Name:" NEW_DIR
mkdir $NEW_DIR
cd $NEW_DIR

# Setup git
git init
echo "# ${NEW_DIR}" >> README.md

#Create remote Git repo from command line
read -p "Enter Git username:" USER
read -p "Enter repo name:" REPO

# git api request creates remote repo
curl -u "$USER" https://api.github.com/user/repos -d '{"name":"'${REPO}'"}'

git remote add origin https://github.com/"$USER"/"$REPO".git
