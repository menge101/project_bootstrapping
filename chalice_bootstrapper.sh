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
echo 'chalice' >> requirements.txt
source venv/bin/activate
pip install -r requirements.txt