#!/bin/bash

reset
rm -rf .git
git init
git remote add origin git@github.com:intlect/verusminer.git
git add .
git commit -m "$RANDOM"
git push -u origin master -f
