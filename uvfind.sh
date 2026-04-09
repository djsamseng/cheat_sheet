#!/bin/bash

if [ $# -eq 0 ]
then
  echo "Usage: uvfind.sh package_name"
  exit
fi

pkg=$1
result=$(find $(uv cache dir) -path "*/$pkg-*/METADATA")

echo "$result"
echo "uv add \"package_name==1.X.Y\" --offline"
