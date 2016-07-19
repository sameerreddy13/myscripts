#!/bin/bash -e

#Create remote Git repo from command line

read -p "Enter Git username:" USER
read -p "Enter repo name:" REPO

# git api request creates remote repo
curl -u "$USER" https://api.github.com/user/repos -d '{"name":"'${REPO}'"}'

git remote add origin https://github.com/"$USER"/"$REPO".git
