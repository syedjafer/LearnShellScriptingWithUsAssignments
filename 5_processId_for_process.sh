#!/bin/bash

while getopts p: flag
do
	case "${flag}" in
		p) processName=${OPTARG};;
	esac
done

echo $processName
echo "ps -af | grep -w "$processName""
ps -ef | grep "$processName"
