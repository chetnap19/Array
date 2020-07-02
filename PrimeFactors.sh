#!/bin/bash 

read -p "Enter Number:" n;
i=2;
j=0;
sum=$(($i*$i))

while [ $n -ge $sum ]
do
	if [[ $rem -eq 0 ]]
	then
		arr[((j++))]="$i"
		n=$(($n/$i))
		rem=$(($n%$i))
	else
		i=$(($i+1))
		rem=$(($n%$i))
	fi
done

arr[((j++))]=$n
echo Prime Factors are: "${arr[@]}"

