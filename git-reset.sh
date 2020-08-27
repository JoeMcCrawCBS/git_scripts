#!/bin/bash

# Takes a path as a parameter to clean
if [ $# -eq 0 ]
  then
    echo "No arguments supplied, provide a path to the git repo you want to hard reset"
    exit 1
else
  cd $1
  git status
  git reset --hard
  git status
  exit 1
fi