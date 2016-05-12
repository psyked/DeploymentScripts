#!/usr/bin/env bash

cd ~/PROJECT_DIRECTORY

npm install

git stash

git pull origin master

/usr/local/bin/node ~/PROJECT_DIRECTORY/datacollector/bitbucket.js -o "BB_OWNER" --username "BB_USERNAME" --password "BB_PASSWORD"

git add ~/PROJECT_DIRECTORY/website/serve/output.json

git commit -am "Auto-submit"

git push origin master

git subtree push --prefix website/serve origin gh-pages

git checkout master
