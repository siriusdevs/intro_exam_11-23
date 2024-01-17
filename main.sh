#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo "Need one argument in the program!"
  exit 1
fi

step=1
if [[ $1 -lt 0 ]]; then
  step=-1
fi

for (( i = 0; i != $1 + $step; i += $step )); do
  if [[ $(( $i % 2 )) -ne 0 ]]; then
    echo $i
  fi
done
