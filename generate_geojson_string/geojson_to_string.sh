#!/bin/bash

# ファイルAを読み込んで改行と空白を削除し、ダブルクオーテーションをエスケープしてファイルBに出力する
cat geojson.json | tr -d '\n' | tr -d '[:blank:]' | sed 's/"/\\"/g' | awk '{print "\"" $0 "\""}' > output.json
