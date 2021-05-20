#!/usr/bin/env bash

#!/bin/bash

pause () {
    read -p "$*"
}

pause "Are you running this from the projects folder?"
project=$1

if ! command -v expo > /dev/null 2>&1
then
  if ! command -v npm > /dev/null 2>&1
  then
    brew install node
  fi

  npm install expo-cli --global
fi

expo init $project
cd $project
generic_bootstrapper

