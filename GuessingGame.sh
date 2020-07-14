#!/usr/bin/env  bash
echo "Welcome to guessing game "
echo "Guess the number of files are there in directory"
read number 
echo "You entered: $number"
file_count=$( ls | wc -l)
function  guess {
while [[ $number -ne $file_count ]]
do 
     if  [[ $number -lt $file_count ]]
     then 
          echo "You have entered $number"
          echo "Your guess is too less."
          echo "Please enter  a number again:"
         read number
     elif  [[ $number -gt $file_count ]]
     then   
         echo "You have entered $number"
         echo "Your guess is too more."
         echo "Please enter a number again :"
         read number
     fi
done 
echo "Congrats!!!! Your answer is correct!!!"
echo  "Your directory contains $number"
}
guess number file_count
