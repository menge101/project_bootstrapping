#!/bin/bash
declared () {
    declare -F "$1" > /dev/null;
}

fileExistsHere () {
    if [ -a "$1" ]; then
        true
    else
        false
    fi
}

fileExistsInBootstrapProject () {
    if [ -a "$HOME/projects/project_bootstrapping/$1" ]; then
        true
    else
        false
    fi
}

fileExistsHereOrThere () {
    if ! fileExistsHere $1; then
        fileExistsInBootstrapProject $1
    else
        true
    fi
}

initGitIfNot () {
    if ! [ -d .git ]; then
        git init
    fi
}
