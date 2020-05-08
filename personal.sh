#!/usr/bin/bash

touchexe () { #Makes a new file and makes it executable
	touch $1
	chmod +x $1
}


alias gpom='git push origin master'
alias mexe='chmod +x'
alias texe='touchexe'
alias ginit='git init && git remote add origin'
alias gcommit='git commit -m'

#Adding ssh keys
currentdir=`pwd`
cd ~/.ssh
ls | xargs ssh-add  2> /dev/null
cd $currentdir
