#!/bin/sh

# Find all build directories and print their size
find . -name 'build' -type d -prune -print | xargs du -chs

# Remove all build directories
find . -name 'build' -type d -prune -print -exec rm -rf '{}' \;

# Remove all .dart_tool directories
find . -name '.dart_tool' -type d -prune -print -exec rm -rf '{}' \;
