#!/bin/bash

for ((i=0; i<10; i++))
do
	random=$((RANDOM%900 + 100));
	randomNumber[$i]="$random";
done

Array=$(printf '%s\n' "${randomNumber[@]}" | sort -n)
echo Sorted Array = $Array

secondLargest=$(printf '%s\n' "${randomNumber[@]}" | sort -n | tail -2 | head -1)
secondSmallest=$(printf '%s\n' "${randomNumber[@]}" | sort -n | head -2 | tail -1)

echo Second largest: $secondLargest
echo Second smallest: $secondSmallest
