#!/bin/bash
#2. Shell-программа периодически с некоторым интервалом удаляет все временные файлы с указанным суффиксом (например, .tmp) в поддереве, начиная с каталога, имя которого задано параметром Shell-программы и ведет лог действий формата: дата/время : удалённые файлы 15.02.09T21:00 : file1 file2 file3

while true ;
do
moref=`find . -name '*.tmp'`
echo $moref
if [[ $moref = "" ]]
then
echo "NOT FOUND"
else 
echo "========================="
echo "$moref файлы на удаление"
echo "========================="
date
find . -name '*.tmp'| xargs rm
fi
sleep 5
done