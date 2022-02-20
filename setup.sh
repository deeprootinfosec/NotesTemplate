#!/bin/bash

#########################################################
###          **IMPORT YOUR SSH KEY FIRST!**           ###
###              **DETAILS IN README!**               ###
#########################################################

#create template functions
echo "note() {cp -r ~/notes/.templates/note_template ./$1} | tee -a ~/.bashrc ~/.zshrc > /dev/null"

echo "report() {cp -r ~/notes/.templates/report_template ./$1} | tee -a ~/.bashrc ~/.zshrc > /dev/null"

echo "tool() {cp ~/notes/.templates/tool_template.md ~/notes/tools/$1} | tee -a ~/.bashrc ~/.zshrc > /dev/null"

echo "ttp() {cp ~/notes/.templates/ttp_template.md ~/notes/ttps/$1} | tee -a ~/.bashrc ~/.zshrc > /dev/null"

#create quick note reference function
echo "toolbox() {cat ~/notes/tools/$1 ~/notes/ttps/$1 2>/dev/null} | tee -a ~/.bashrc ~/.zshrc > /dev/null"

#ask user for git repo url
read -p "Enter URL to your Git repository: " git_repository

#write out current crontab
crontab -l > mycron

#add git push at 15 minute interval to crontab
echo "15 * * * * git add ~/notes/* && git commit -m 'auto push' && git push origin master" >> mycron

#install new cron file
crontab mycron
rm mycron