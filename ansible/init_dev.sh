#! /bin/bash

virtualenv -p python2 venv
source venv/bin/activate

pip install -r requirements.txt
