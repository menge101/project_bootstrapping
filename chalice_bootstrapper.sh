#!/usr/bin/env bash

#!/bin/bash

pause () {
    read -p "$*"
}

pause "Are you running this from the projects folder?"
project=$1
chalice new-project $1
cd $1
python_bootstrapper
