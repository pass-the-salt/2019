#!/bin/bash

# From https://theowinter.ch/articles/Use-cgi-bin-to-automate-Jekyll/

#Script is executed by www-data user. It needs to have write-access to
#/var/www/2018 & /var/www/2018-passthesalt/
echo "Content-type: text/plain"
echo
echo "Checking for updates to 2018..."
exec 2>&1
cd /var/www/2018

#Check if there are changes
if git checkout master &&
    git fetch origin master &&
    [ `git rev-list HEAD...origin/master --count` != 0 ] &&
    git merge origin/master
then
    echo 'Changes found, syncing.'
    #jekyll build
    rsync -av --delete /var/www/2018/_site/ /var/www/2018-passthesalt/
else
    echo 'Not updated.'
fi
echo "Have a nice day!"
