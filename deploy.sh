#!/bin/bash

mkdir -p ~/bin
#deploy all bootstrap files
for f in ${HOME}/projects/project_bootstrapping/*_bootstrapper.sh
do
  echo "Deploying $f"
  rsync $f ~/bin/$(basename ${f%%.*})
  chmod 744 ~/bin/$(basename ${f%%.*})
done

#add user bin folder to path if not already present
if ! echo $PATH | grep -q "${HOME}/bin"; then
    export PATH="$PATH:${HOME}/bin"
    echo "Update your shell so ${HOME}/bin is permanently added to PATH"
fi