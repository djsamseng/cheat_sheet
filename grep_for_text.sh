#!/bin/bash

if [ $# -eq 0 ]
then
  echo "Usage: ./grep_for_text.sh \"text to find\" /path/to/folder --include=\*.{cpp,h}"
  echo "-l print only names of FILEs with selected lines"
  exit
fi

text=$1
location=$2

# Remove $1 and $2 to pass remaining arguments as $@
shift
shift

# sudo apt-get install ripgrep
result=$(rg -iIH "$text" "$location" \
  $@ \
  -g '!{node_modules,build,env,lib,.data,.git,data,include,__pycache__,.cache,share,odas,dependencies,.env,lib64,site-packages,flutter}/' -g '!{*.lock}' | cut -c1-160)
  
echo "$result"
