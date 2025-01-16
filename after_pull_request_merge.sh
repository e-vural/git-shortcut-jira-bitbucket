#!/bin/bash

current_branch=$(git branch --show-current);

git checkout main
git pull origin main

git branch -d "$current_branch"
git fetch --prune



