indices="/home/bob/bin/array/indices.json"
index=$(shuf -i 0-5 -n 1)
len=$(jq "[.array[] | select(.)] | length" $indices)
ocurrences=$(jq "[.array[] | select(. == $index)] | length" $indices)



if [ $len -lt 6 ]
then
        until [ $ocurrences -eq 0 ]
        do
                index=$(shuf -i 0-5 -n 1)
		ocurrences=$(jq "[.array[] | select(. == $index)] | length" $indices)
        done

        newindices=$(jq ".array += [$index]" $indices)
	echo $newindices > $indices
fi

if [ $len -eq 6 ]
then 
	newindices="{ \"array\": [] }"
	echo $newindices > $indices
fi

