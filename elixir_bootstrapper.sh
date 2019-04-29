#!/bin/bash

pause () {
    read -p "$*"
}

pause "Are you running this from the projects folder?"
project=$1
module=$2
if [[ -n "$module" ]]; then
    mix new "$project" --module "$module"
else
    mix new "$project"
fi

cd "$project"
generic_bootstrapper