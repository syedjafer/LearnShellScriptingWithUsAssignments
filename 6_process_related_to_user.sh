#!/bin/bash

while getopts u: flag
do
	case "${flag}" in
		u) username=${OPTARG};;
	esac
done

ps -u "$username"
