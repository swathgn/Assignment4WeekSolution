#!/usr/bin/env bash
#guessinggame.sh
echo "enter the number of files which is in the current directory?"
input=$(ls | wc -l)

function number {
echo "Enter a number:"
read number
}

number

while :
do
  expr "$number" + 1 
  if [[ $? -gt 1 ]]; then
    echo "Enter a number!"
    number
  elif [[ $number -eq $input ]]; then
    echo "Congratulation ,the number is $number."
    break
  elif [[ $number -lt $input ]]; then
    echo "Number was too low!"
    number
  else
    echo "Number was too high!"
    number
  fi
done