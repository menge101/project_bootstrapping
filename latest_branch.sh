#!/bin/bash
cd ~/projects/project_bootstrapping
git co -b latest_$(date +%Y-%m-%d=%H-%M-%S)

for f in ${HOME}/bin/*_bootstrapper
do
  echo "Gathering latest changes from $f"
  rsync $f ./$(basename $f).sh
done
