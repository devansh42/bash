#!/bin/bash
# MIM = Make It Mine
# It customize the machine according to @devansh42
folder=.thanos
if [ ! -e "~/$folder" ]; then mkdir ~/.devansh42; fi

# Adding personal.sh

personal() {

    if [! -e "~/$folder/personal.sh" ]; then
        "source ~/$folder/personal.sh" >>~/.bashrc
    fi
}

server() {
    # Setups for server instances
   bash server.sh       
}
