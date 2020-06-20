export LC_ALL=C; unset LANGUAGE
########## CONFIGURATION ##########

HISTFILE=~/.histfile

# Remember about a years worth of history (AWESOME)
SAVEHIST=10000
HISTSIZE=10000

setopt  autocd
setopt extendedglob
setopt nomatch
unsetopt beep notify

# Setup dir history
DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome

# Emacs hotkeys
bindkey -e

# Don't overwrite, append!
setopt APPEND_HISTORY

# Killer: share history between multiple shells
setopt SHARE_HISTORY

setopt HIST_IGNORE_DUPS

# Even if there are commands inbetween commands that are the same, still only save the last one
setopt HIST_IGNORE_ALL_DUPS

# Pretty    Obvious.  Right?
setopt HIST_REDUCE_BLANKS

# If a line starts with a space, don't save it.
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE

# When using a hist thing, make a newline show the change before executing it.
setopt HIST_VERIFY

# Save the time and how long a command ran
setopt EXTENDED_HISTORY

setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# Make ctrl-l edit the current command line
autoload edit-command-line
zle -N edit-command-line
bindkey "^l" edit-command-line
export EDITOR="emacs -nw -q"

bindkey "^q" push-line
bindkey "^h" accept-and-hold

########## ALIASES ##########

alias l="ls -CF"
alias ll="ls -lh"
alias la="ls -A"
alias sl="ls"
alias lla="ls -la"
alias c="clear"
alias dh="dirs -v"
alias notes="cd ~/documents/notes"
alias ls='ls --tabsize=0 --literal --show-control-chars --color=always --human-readable'
alias grep='grep --color=auto'
alias fb='feh --bg-scale'
alias f='ffplay'
########## PROMPT ##########
# Time %B%t%b 
PROMPT='%n@%m:%3/-> '


########## FUNCTIONS ##########

insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo


########## UNDER DEVLOPMENT ##########

VIEW=/usr/bin/elinks

# URL encode something and print it.
function url-encode; {
        setopt extendedglob
        echo "${${(j: :)@}//(#b)(?)/%$[[##16]##${match[1]}]}"
}

# Search google for the given keywords.
function google; {
        $VIEW "http://www.google.com/search?q=`url-encode "${(j: :)@}"`"
}

export PYTHONIOENCODING=utf8
export LANG=en_US.UTF-9 #The output of cabal was giving an error
PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/bjr/programs/node/node-v12.13.1-linux-x64/bin:/usr/local/go/bin:/home/bjr/go/bin:/home/bjr/programs/leiningen:/home/bjr/.local/bin"

