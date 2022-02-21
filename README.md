# NotesTemplate
------------------------------------------------------------------
------------------------------------------------------------------
## Getting Started:

Import your SSH key into GitHub and fork this repository over to your account. Once you have done this clone the repo to your local machine using ```git clone <URL> notes```. The functions within this repo will only work if your local repository is named 'notes'. If you change this you will also have to adjust the setup script. 

## Setup Script:

Add execute permissions to git_push.sh and setup.sh with ```chmod +x ./file_name.sh``` and run the script as yourself. It will ask for your username and the name of your fork of this repository. I recommend renaming the repository before this step to whatever you want it to be. Locally the repositiry will be housed in a folder named 'notes'.

## Functions:
 
note <name>- creates a note folder in the current directory with the specified name. 

report <name> - creates a report folder in the current directory with the specified name.

tool <name> - creates a tool file in your ~/notes/tools/ directory with the specified name.

ttp <name> - creates a ttp file in your ~/notes/ttps/ directory with the specified name. 

toolbox <name> - lists all of the notes in tools and ttps. 

## Cron Job:

A cron job will be created to automatically push your changes back to your repo every 5 minutes. I recommend double checking this the first few times to make sure it is working correctly. You can get a log of the output by adding ```>> ~/git_cron.log``` to the command in your crontab. 
