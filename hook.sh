#!/bin/bash
tmp=$(mktemp)
hook=$(readlink -f $(git rev-parse --git-dir))/hooks/commit-msg
git filter-branch -f --msg-filter "cat > $tmp; \"$hook\" $tmp; cat $tmp" origin/EXODUS-6.0..EXODUS-6.0
