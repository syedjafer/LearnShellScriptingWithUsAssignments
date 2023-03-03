#!/bin/bash

while getopts d: flag
do
	case "${flag}" in
		d) directory=${OPTARG};;
	esac
done

find "$directory" -maxdepth 1 -type f -printf "$PWD/%f %sbytes %M %Y \n"
