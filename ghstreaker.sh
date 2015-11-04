#!/bin/bash

# Check that we have a configuration file
if [ ! -f ghstreaker.conf ]; then
	printf "You don't have a configuration set yet!\n"
	exit 1
fi

# Load the configuration
source ghstreaker.conf

# Print out details just so we know
printf "Local repository location: %s\n" $GH_local_git_folder

# Go into that directory
cd $GH_local_git_folder

# Check if we have a Git repository set up already
if [ ! -d .git ]; then
	printf "The local repository location is not a Git repository!\n"
	exit 1
fi

# Check if we have a README.md file already; if so, delete it so we can make a new one
if [ -f README.md ]; then
	rm README.md
fi

# Create a new README.md file
echo "# GHStreaker Repository" >> README.md
echo "" >> README.md
echo "This repository has automated commits set up." >> README.md
echo "" >> README.md
echo "The last commit time was $(date "+%d/%m/%y %r")." >> README.md
echo "" >> README.md
echo "For more information, visit https://github.com/bt/GHStreaker" >> README.md

# Add all files
git add .

# Make a commit
git commit -m "Auto-commit by GHStreaker"

# Push it out
git push
