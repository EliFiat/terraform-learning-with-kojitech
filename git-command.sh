#!/bin/sh

echo "Add files and do local commit"
git add .

echo "checking status"
git status

git commit -am "Welcome to Kojitechs" # "added provider block, yterraform block, resource block"

echo "Pushing to Github Repository"
git push


# chmod 