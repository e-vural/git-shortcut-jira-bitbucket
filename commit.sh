#!/bin/bash

current_branch=$(git branch --show-current);

prefix=$(echo "$current_branch" | grep -oE '^[^-]+-[^-]+')

# Kullanıcıdan commit mesajını al
echo "Please Add Commit Message:"
read message

# Git işlemlerini gerçekleştir
git add .
git commit -m "$prefix $message"
