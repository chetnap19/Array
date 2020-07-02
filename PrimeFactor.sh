#!/bin/bash -x

read -p "Enter number:" number
echo "Prime factors of $number are:"
for(( i=2;i*i<=number;i++ ))
do
	num=$(($number % $i))
	while [ $(( $number % $i )) -eq 0 ]

	do
		echo $i
		number=$(( $number / $i ))
	done
done
if [ $number -gt 2 ]
then
	echo $number
fi

