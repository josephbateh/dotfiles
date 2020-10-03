#!/bin/bash -ex
pushd /Users/joseph/.dotfiles
date=$(date +%Y%m%d)
git checkout master
git add .
git commit -m $date
git push
popd