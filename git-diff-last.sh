#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    git status
    exit 1
else
  cd $1
  git diff HEAD^..HEAD
  git status
  exit 1
fi

