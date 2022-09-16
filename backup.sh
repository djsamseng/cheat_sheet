#!/bin/bash

today=$(date '+%Y_%m_%d')
dirname="/media/samuel/T7/$today"

echo "Creating $dirname"
mkdir "$dirname"

cp ./backup.sh "$dirname"
cp ./ocr_find_patches.py "$dirname"
