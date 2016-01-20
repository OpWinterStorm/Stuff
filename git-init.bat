@echo off
git init
git lfs init

git add -A
git commit -m "Thanks Davis, my most wonderful brother!" -m "You're welcome!"

set /p url= Paste URL for repo: 
git remote add origin "%url%"
git push -u origin master
