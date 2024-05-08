#!/bin/bash

validate_keyword_staging() {
  if [[ "$KEYWORD" != "cherry" ]]; then
    echo "Error: Keyword must be cherry for staging environment"
    exit 1
  fi

  echo "Inputs validation successful: Keyword is $KEYWORD"
  exit 0
}
