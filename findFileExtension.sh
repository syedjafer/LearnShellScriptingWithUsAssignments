#!/bin/bash

while getopts f:e: flag
do
	case "${flag}" in
		f) folder=${OPTARG};;
		e) extension=${OPTARG};;
	esac
done

echo "Folder : $folder";
echo "Extension: $extension";

find "$folder" -type f -name "*$extension"
