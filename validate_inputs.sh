#!/bin/bash

environment="$1"
keyword="$2"

production_keywords=("apple" "banana")
staging_keywords=("cherry" "dekopon")

if [[ "$environment" != "production" && "$environment" != "staging" ]]; then
  echo "Error: Environment must be production or staging"
  exit 1
fi

if [[ "$environment" == "production" ]]; then
  valid_keywords=("${production_keywords[@]}")
elif [[ "$environment" == "staging" ]]; then
  valid_keywords=("${staging_keywords[@]}")
fi

valid=false
for valid_keyword in "${valid_keywords[@]}"; do
  if [[ "$keyword" == "$valid_keyword" ]]; then
    valid=true
    break
  fi
done

if ! $valid; then
  echo "Error: Keyword must be one of ${valid_keywords[*]} for $environment environment"
  exit 1
fi

echo "Inputs validation successful: Environment is $environment, Keyword is $keyword"
exit 0
