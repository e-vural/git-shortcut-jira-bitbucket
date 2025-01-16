#!/bin/bash
# Renk tanımları
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
RED='\033[0;31m'
CYAN='\033[0;36m'
RESET='\033[0m' # Renkleri sıfırlamak için
current_branch=$(git branch --show-current);



echo -e "You are pushing that branch: ${CYAN}${current_branch}.${RESET} Are you continue? (Y/n):  \c"
# Kullanıcıdan commit mesajını al
read user_answer
user_answer=${user_answer:-Y}

# Küçük harfe çevirme (Bash 4.0 öncesi uyum için `tr` kullanılıyor)
user_answer=$(echo "$user_answer" | tr '[:upper:]' '[:lower:]')

# Kullanıcı yanıtını kontrol et
if [[ "$user_answer" == "y" ]]; then
    # Git işlemlerini gerçekleştir
git push origin $current_branch
else
    exit 1
fi



