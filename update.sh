#!/bin/bash -ex
pushd ~/.dotfiles
date=$(date +%Y-%m-%d)
git checkout master
git add .
git commit -m "$date"
git push
popd