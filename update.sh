#!/bin/bash -ex
pushd ~/.dotfiles
date=$(date +%Y-%m-%d)
git fetch
git pull
git checkout main
git add .
git commit -m "$date"
git push
popd