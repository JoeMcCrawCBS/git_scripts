#!/bin/bash

# Takes a path as a parameter to clean
if [ $# -eq 0 ]
  then
    echo "No arguments supplied, provide a path"
    git mergetool -t opendiff
    git status
    exit 1
else
  cd $1
  git mergetool -t opendiff
  git status
  exit 1
fi
