#!/bin/bash

## Define function per each math operation (+, -, /, *)
## Any math opeartion requires 2 integer inputs


function add {
     echo $(( $1 + $2 ))
}
function subtract {
     echo $(( $1 - $2 ))
}
function multiply {
     echo $(( $1 * $2 ))
}
function divide {
     echo $(( $1 / $2 ))
}

if [ $# -eq 0 ]; then

  echo "Please choose an operation"
  echo """
       1) Addition (+)
       2) Substraction (-)
       3) Multiply (*)
       4) Divide (/)
       """
  read -p "Please choose an operation: " operation
  read -p "Enter 2 numbers: " num1 num2 

  case $operation in
  1) add $num1 $num2 ;;
  2) subtract $num1 $num2 ;;
  3) multiply $num1 $num2 ;;
  4) divide $num1 $num2 ;;
  *) echo "Invalid option. Enter a number (exp 1, 2)" ;;
  esac

  fi
