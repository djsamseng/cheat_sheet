#!/bin/bash

if [ $# -eq 0 ]
then
  echo "Usage: ./grep_for_text.sh \"text to find\" /path/to/folder --include=\*.{cpp,h}"
  exit
fi

text=$1
location=$2

# Remove $1 and $2 to pass remaining arguments as $@
shift
shift

result=$(grep -Ril "$text" "$location" \
  $@ \
  --exclude-dir=node_modules --exclude-dir=build --exclude-dir=env --exclude-dir=lib \
  --exclude-dir=.data --exclude-dir=.git --exclude-dir=data --exclude-dir=include \
  --exclude-dir=__pycache__ --exclude-dir=.cache --exclude-dir=docs \
  --exclude-dir=share --exclude-dir=odas --exclude-dir=dependencies \
  --exclude-dir=assets)

echo "$result"