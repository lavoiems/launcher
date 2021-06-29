#!/bin/bash

. /etc/profile

module load python/3.8

LOC=.

virtualenv $LOC/env

source $LOC/env/bin/activate

pip install -r requirements.txt

