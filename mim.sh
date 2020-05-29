#!/bin/bash
# MIM = Make It Mine
# It customize the machine according to @devansh42
folder=.thanos
if ! [ -d "~/$folder" ]; then mkdir ~/$folder; fi

# Adding personal.sh

personal() {
    echo "Personalinzing This machine ... "

    if ! [ -f "~/$folder/personal.sh" ]; then
        cp personal.sh ~/$folder/personal.sh
        echo "source ~/$folder/personal.sh" >>~/.bashrc
    fi
}

server() {
    echo "Customizing this machine for server stuff"
    # Setups for server instances
    bash server.sh
}

for x in $(seq $#); do
    $($1)
    shift 1
done
