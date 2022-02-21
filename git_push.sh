#!/bin/bash

cd ~/notes/

git config pull.rebase false

git pull

git add .

git commit -m 'auto push'

git push
