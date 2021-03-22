#!bin/bash
#1. Shell-программа подсчитывает количество и выводит список всех файлов (без каталогов) в порядке уменьшения их длин в поддереве, начиная с каталога, имя которого задано параметром Shell-программы

echo "Count FILES"

find . -maxdepth 1 -type d -print0 | while read -d '' -r dir; do
    files=("$dir"/*)
    printf "%5d files in directory %s\n" "${#files[@]}" "$dir"
done


echo "PWD of folder"

pwd

echo "all files" 

find . -type f | awk -F '/' '{print $NF}' | awk '{print length($0) "/" $0}' | sort -nr | awk -F '/' '{print $NF}'