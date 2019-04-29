#!/bin/bash
source functions_for_bootstrapper
if ! fileExistsHere .gitignore; then
    touch .gitignore
fi

echo '# bootstrapped ignores' >> .gitignore
echo '*_bootstrapper.sh' >> .gitignore
echo '.idea/*' >> .gitignore
echo '.orig' >> .gitignore

if ! fileExistsHere README.md; then
    touch README.md
fi

initGitIfNot
