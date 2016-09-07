#!/bin/bash

if ! fileExistsHere .gitignore; then
    touch .gitignore
    echo '# bootstrapped ignores' >> .gitignore
    echo '*_bootstrapper.sh' >> .gitignore
    echo '.idea/*' >> .gitignore
fi

if ! fileExistsHere README.md; then
    touch README.md
fi
