#! /bin/bash
#На языке unix shell написать программу, которая переводит имена подкаталогов текущего каталога в латиницу.
#


for filename in *                
do
   fname=`basename $filename`
   n=`echo $fname | tr а-я a-z` 
   if [ "$fname" != "$n" ] 
   then
     mv $fname $n
   fi
done

exit 0
