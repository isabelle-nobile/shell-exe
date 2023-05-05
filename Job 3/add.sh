#!/bin/bash
if [ $# -ne 2 ]; then
  echo "Usage: $0 <number1> <number2>"
  exit 1
fi

num1=$1
num2=$2
sum=$(expr $num1 + $num2)
echo "Sum of $num1 and $num2 is: $sum"
