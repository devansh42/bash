#!/usr/bin/bash

touchexe () { #Makes a new file and makes it executable
	touch "$@"
	chmod +x "$@"
}


alias gpom='git push origin master'
alias mexe='chmod +x'
alias texe='touchexe'
alias ginit='git init && git remote add origin'
alias gcommit='git commit -m'
alias qcommit='git add . && git commit -m' # Quick Git Commit
#Making dump did
if ! [ -e ~/dump ];then
	if ! [ -e /tmp/dump ];then
		mkdir /tmp/dump
	fi
	ln -s /tmp/dump ~/dump
fi
#Adding ssh keys
currentdir=`pwd`
cd ~/.ssh
ls | xargs ssh-add  2> /dev/null
cd $currentdir
