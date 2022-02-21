#!/bin/bash

#########################################################
###          **IMPORT YOUR SSH KEY FIRST!**           ###
###              **DETAILS IN README!**               ###
#########################################################

mkdir ~/bin/

mv ./git_push.sh ~/bin

#create template functions
echo "alias note='cp -r ~/notes/.templates/note_template'" | tee -a ~/.bashrc ~/.zshrc >/dev/null

echo "alias report='cp -r ~/notes/.templates/report_template'" | tee -a ~/.bashrc ~/.zshrc >/dev/null

echo "alias tool='cp ~/notes/.templates/tool_template.md ~/notes/tools/'" | tee -a ~/.bashrc ~/.zshrc >/dev/null

echo "alias ttp='cp ~/notes/.templates/ttp_template.md ~/notes/ttps/'" | tee -a ~/.bashrc ~/.zshrc >/dev/null

#create quick note list function
echo "alias toolbox='find ~/notes/ttps ~/notes/tools'" | tee -a ~/.bashrc ~/.zshrc >/dev/null

#write out current crontab
crontab -l > mycron

read -p "What is your GitHub username? " uname

read -p "What is your GitHub repository name?" repo

git remote set-url origin git@github.com:$uname/$repo.git

ssh git@github.com

#add git push at 15 minute interval to crontab
echo "*/5 * * * * ~/bin/git_push.sh" >> mycron

#install new cron file
crontab mycron
rm mycron
