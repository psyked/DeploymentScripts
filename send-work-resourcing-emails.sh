#!/usr/bin/env bash

cd ~/PROJECT_DIRECTORY

npm install

git stash

git pull origin master

/usr/local/bin/node ~/PROJECT_DIRECTORY/download.js -u "O365_EMAIL" -p "O365_PASSWORD"

/usr/local/bin/node ~/PROJECT_DIRECTORY/app.js

