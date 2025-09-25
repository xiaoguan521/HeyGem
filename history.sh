#!/bin/bash

# Number of commits you want
NUM_COMMITS=60  

# Go back 90 days (about 3 months)
DAYS_AGO=90  

for i in $(seq 1 $NUM_COMMITS); do
  # Pick a random day in the last 90 days
  OFFSET=$((RANDOM % DAYS_AGO))
  DATE=$(date -d "$OFFSET days ago" +"%Y-%m-%d %H:%M:%S")

  # Make a dummy change
  echo "Commit made on $DATE" > releases.txt
  git add releases.txt

  # Commit with custom author and date
  GIT_AUTHOR_DATE="$DATE" GIT_COMMITTER_DATE="$DATE" git commit -m "Backdated commit for $DATE"
done