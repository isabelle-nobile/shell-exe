#!/bin/bash
if [ $# -ne 3 ]; then
  echo "Usage: $0 <number1> <operator> <number2>"
  exit 1
fi

num1=$1
op=$2
num2=$3

case $op in
  +)
    result=$(expr $num1 + $num2)
    echo "Sum of $num1 and $num2 is: $result"
    ;;
  -)
    result=$(expr $num1 - $num2)
    echo "Difference between $num1 and $num2 is: $result"
    ;;
  \*)
    result=$(expr $num1 \* $num2)
    echo "Product of $num1 and $num2 is: $result"
    ;;
  /)
    if [ $num2 -eq 0 ]; then
      echo "Error: Division by zero"
      exit 1
    fi
    result=$(echo "scale=2; $num1 / $num2" | bc)
    echo "Division of $num1 by $num2 is: $result"
    ;;
  *)
    echo "Error: Invalid operator"
    exit 1
    ;;
esac
