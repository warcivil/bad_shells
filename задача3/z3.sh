#!bin/bash
#Напишите программу, которая выводит на экран числа от 1 до случайного числа в диапазоне [100,200]. При этом вместо чисел, кратных трем, программа должна выводить слово «Fizz», а вместо чисел, кратных пяти — слово «Buzz». Если число кратно и 3, и 5, то программа должна выводить слово «FizzBuzz». Язык программирования — Unix Shell.

FLOOR=100
RANGE=201

number=0 
while [ "$number" -le $FLOOR ]
do
  number=$RANDOM
  let "number %= $RANGE"
done
echo "Случайное число в диапазоне от $FLOOR до $RANGE ---  $number"
echo

((x = 1));
while (( x < $number ));
do

        if { ( (( x % 5 == 0 )) && (( x % 3 == 0 )) ) } then echo "fizzbuzz";
        elif (( x % 5 == 0 )); then echo "buzz";
        elif (( x % 3 == 0 )); then echo "fizz";
        else
                echo "$x";
        fi

(( x++ ))

done
