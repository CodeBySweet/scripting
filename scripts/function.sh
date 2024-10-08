#!/bin/bash

# world() {

# }
function world {
      echo "First argument: $1"
      echo "Second argument: $2"
}

# world "Hello" "World"

calculate_sum() {
    local result=$(( $1 + $2 ))
    echo "$result"
}

calculate_sum 3 5
echo $result