#!/bin/bash

echo """Select from the following options:
    1) Calculate area of a square
    2) Calculate area of a circle
    3) Calculate area of a triangle"""

read -p "Enter an option: " option
read -p "Enter 2 parameters: " par1 par2

# Calculate the area of a square (side * side)
function square {
   echo $(( $1 * $1 ))
}
# Calculate the area of a circle (PI * radius * radius)
function circle {
    PI=3.14
    echo "scale=2; $PI * $1 * $1" | bc
}
# Calculate the area of a triangle (1/2 * base * height)
function triangle {
    echo "scale=2; 1 / 2 * $1 * $2" | bc
}

case $option in
1) square $par1 ;;
2) circle $par1 ;;
3) triangle $par1 $par2 ;;
*) echo "Invalid input. Enter a valid input (exp. 1, 2)";;
esac
