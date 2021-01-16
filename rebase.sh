#!/bin/bash

git checkout master
git pull upstream master
git push zaphodbe master

#branches=( "DlgExpressionInput4384" "SpaceBalls" "dev" )
branches=( "SpaceBalls" "dev" )
for x in "${branches[@]}"
do
  echo Rebasing branch $x
  git checkout $x
  git rebase master
  git push -f zaphodbe $x
done
