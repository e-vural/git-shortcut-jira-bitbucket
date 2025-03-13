#!/bin/bash

# UTF-8 locale ayarları
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Otomatik tamamlama fonksiyonu
_file_complete() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -f -- "$cur") )
}

# Otomatik tamamlamayı aktif et
complete -F _file_complete -o filenames read

# Geçerli branch adını alın
current_branch=$(git branch --show-current)

# Branch ön eki çıkar
prefix=$(echo "$current_branch" | grep -oE '^[^-]+-[^-]+')

# Git durumunu göster
echo "Değişiklik yapılan dosyalar:"
git status --porcelain

# Kullanıcıdan eklenecek dosyaları sor (Tab tuşu ile tamamlama aktif)
echo "Tab tuşunu kullanarak dosyaları seçebilirsiniz"
read -e -p "Enter files to add (default '.'): " files_to_add
files_to_add=${files_to_add:-.}

# Git işlemlerini gerçekleştir
git add $files_to_add

# Kullanıcıdan commit mesajını UTF-8 olarak al
read -p "Please add commit message: " message
message=$(echo "$message" | iconv -f utf-8 -t utf-8)

# Eğer mesaj boşsa hata mesajı göster
if [ -z "$message" ]; then
  echo "Commit message cannot be empty!"
  exit 1
fi

git commit -m "$prefix $message"