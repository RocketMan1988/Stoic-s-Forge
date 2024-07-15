#!/bin/sh

# Copy over files from Stoic Forge Publish Folder --> Push updates to git with a commit
rm -r "/Users/sardonnie/Documents/ObsidianPublisher/quartz/content/"
cp -a "/Users/sardonnie/Documents/Stoic's Forge/Publish/." "/Users/sardonnie/Documents/ObsidianPublisher/quartz/content/"

# Git Push
git add .
git -c color.status=false status | sed -n -r -e '1,/Changes to be committed:/ d' -e '1,1 d' -e '/^Untracked files:/,$ d' -e 's/^\s*//' -e '/./p' | git commit -F -
git push