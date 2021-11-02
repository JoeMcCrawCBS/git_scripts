#!/bin/bash

# Takes a path as a parameter to clean
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    git remote prune origin
    git status
    exit 1
else
  cd $1
  git remote prune origin
  git status
fi


