#!/bin/bash -e

# Crontab entry to run this script every day at 12 PM
# 0 12 * * * /bin/bash $HOME/.dotfiles/scripts/delete-old-branches.sh abolute-path-to-git-repo

# This script deletes stale local branches.
STALE_DAY_THRESHOLD=30
RESERVED_PREFIX="saved/"

# Get the directory of the git repository through an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <path-to-git-repo>"
  exit 1
fi

# Calculate the timestamp for the threshold
if [[ "$OSTYPE" == "darwin"* ]]; then
  threshold_timestamp=$(date -v-"$STALE_DAY_THRESHOLD"d +%s)
else
  threshold_timestamp=$(date --date="$STALE_DAY_THRESHOLD days ago" +%s)
fi

# Change to the git repository directory
pushd "$1" > /dev/null

# Iterate over each local branch
git for-each-ref --format='%(refname:short) %(committerdate:unix)' refs/heads/ | while read branch date; do
  # Skip branches that start with the reserved prefix
  if [[ $branch == $RESERVED_PREFIX* ]]; then
    continue
  fi

  # Check if the branch is older than the threshold
  if [ $date -lt $threshold_timestamp ]; then
    echo "Deleting branch: $branch"
    git branch -D "$branch"
  fi
done
