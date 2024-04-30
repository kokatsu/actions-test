#!/bin/bash

# 入力値の確認
keyword="$1"

# キーワードが banana の場合に失敗させる
if [[ "$keyword" == "dekopon" ]]; then
  echo "Error: Keyword cannot be banana for staging environment"
  exit 1
fi

# 条件を満たしている場合は成功を出力
echo "Inputs validation successful: Keyword is $keyword"
exit 0
