#!/bin/bash

keyword="$1"

if [[ "$keyword" == "dekopon" ]]; then
  echo "Error: Keyword cannot be dekopon for staging environment"
  exit 1
fi

echo "Inputs validation successful: Keyword is $keyword"
exit 0
