#!/bin/bash
echo "# login2shiny" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/CarlBoneri/login2shiny.git
git push -u origin master
