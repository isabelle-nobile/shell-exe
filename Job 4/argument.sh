#!/bin/bash
if [ $# -ne 2 ]; then
  echo "Usage: $0 <newfile> <sourcefile>"
  exit 1
fi

newfile=$1
sourcefile=$2

if [ ! -f "$sourcefile" ]; then
  echo "Error: $sourcefile does not exist"
  exit 1
fi

cat "$sourcefile" > "$newfile"
echo "Copied contents of $sourcefile to $newfile"
