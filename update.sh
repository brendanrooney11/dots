#!/bin/bash

# Update From Repository or Update To Repositry
PROMPT1='What Type Of Action is To Be Done?'
PS3="$PROMPT1 "
options=("Update From Repo" "Update To Repo")
select opt in "${options[@]}"
do
    case $opt in
        "Update From Repo")
            git pull
            break;;
        "Update To Repo")
            break;;
    esac
done

# Select Which Thing To Modify
PROMPT2="What Dots To Act On?"
PS3="$PROMPT2 "
options=("emacs" "i3" "zsh" "quit")
select opt2 in "${options[@]}"
do
    case $opt2 in
        "emacs")
            if [ "$opt" == "Update From Repo" ]; then                
                mkdir ~/.emacs.tmp
                cp ~/.emacs.d/init.el ~/.emacs.tmp
                cp -r ~/.emacs.d/init_files/ ~/.emacs.tmp
                rm ~/.emacs.d/init.el
                rm -r ~/.emacs.d/init_files
                cp ./emacs/init.el ~/.emacs.d/init.el
                cp -r ./emacs/init_files/ ~/.emacs.d/init_files/
            elif [ "$opt" == "Update To Repo" ]; then
                cp -r emacs emacs.tmp
                rm -r emacs
                mkdir emacs
                cp ~/.emacs.d/init.el emacs/
                cp -r ~/.emacs.d/init_files/ ./emacs/
            fi
            break;;
        "i3")
            break;;
        "zsh")
            break;;
        *)
            echo "Invalid option $REPLY";;
    esac
done

#echo $opt $opt2
