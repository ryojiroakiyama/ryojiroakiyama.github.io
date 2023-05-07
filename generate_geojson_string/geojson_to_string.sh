#!/bin/bash

# $1がなければエラー
if [ $# -ne 1 ]; then
  echo "Usage: $0 [geojson file]"
  exit 1
fi

# ファイルAを読み込んで改行と空白を削除し、ダブルクオーテーションをエスケープしてファイルBに出力する
cat $1 | tr -d '\n' | tr -d '[:blank:]' | sed 's/"/\\"/g' | awk '{print "\"" $0 "\""}' > output.json
