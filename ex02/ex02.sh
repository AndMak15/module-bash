#!/usr/bin/env bash

for pattern in $1; do
	match=$(ls -R | egrep "$pattern")
	if [ -z "$match" ]; then
		echo "the searched PATH is unexisting"
	else
		echo "$match"
	fi
done
