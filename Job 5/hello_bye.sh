#!/bin/bash
if [ "$1" = "Hello" ]; then
  echo "Bonjour, je suis un script !"
elif [ "$1" = "Bye" ]; then
  echo "Au revoir et bonne journée"
else
  echo "Usage: $0 <Hello|Bye>"
  exit 1
fi
