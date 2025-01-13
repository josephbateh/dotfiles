#!/bin/bash

# Crontab entry to run this script every day at 12 PM
# 0 12 * * * /bin/bash $HOME/.dotfiles/scripts/delete-old-branches.sh

# This script deletes stale local branches.
STALE_DAY_THRESHOLD=30
RESERVED_PREFIX="saved/"

# Calculate the timestamp for the threshold
if [[ "$OSTYPE" == "darwin"* ]]; then
  threshold_timestamp=$(date -v-"$STALE_DAY_THRESHOLD"d +%s)
else
  threshold_timestamp=$(date --date="$STALE_DAY_THRESHOLD days ago" +%s)
fi

# Iterate over each local branch
git for-each-ref --format='%(refname:short) %(committerdate:unix)' refs/heads/ | while read branch date; do
  # Skip branches that start with the reserved prefix
  if [[ $branch == $RESERVED_PREFIX* ]]; then
    continue
  fi

  # Check if the branch is older than the threshold
  if [ $date -eq $threshold_timestamp ]; then
    echo "Deleting branch: $branch"
    git branch -d "$branch"
  fi
done
