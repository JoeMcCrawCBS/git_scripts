#!/bin/bash


# Takes a path as a parameter to reset packages
if [ $# -eq 0 ]
  then
    echo "No arguments supplied, provide a path to the git repo you want to hard reset"
    exit 1
else
  cd $1
  ls
  cd Apps/CBS
  xcodebuild -resolvePackageDependencies -list -scmProvider system -workspace CBS.xcworkspace
  exit 1
fi

