#!/bin/zsh
BLANK=""

input="pkg.info"
while IFS= read -r line
do
  if [[ $line == "$1"* ]]
      then
        echo "${line/$1:/$BLANK}" | Xargs
  fi
done < "$input"

