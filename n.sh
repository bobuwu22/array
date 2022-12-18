json="/home/bob/bin/array/numbers.json"
arr=$(jq ".array[]" $json)
len=$(jq "[.array[] | select(.)] | length" numbers.json)
var=$(shuf -i 0-5 -n 1)
#var=$(shuf -i 0-5 -n 1)
ocurrences=$(jq "[.array[] | select(. == $var)] | length" $json)



if [ $len -lt 6 ]
then
        until [ $ocurrences -eq 0 ]
        do
                var=$(shuf -i 0-5 -n 1)
		ocurrences=$(jq "[.array[] | select(. == $var)] | length" $json)
        done

        newjson=$(jq ".array += [$var]" $json)
	echo $newjson > $json
fi

if [ $len -eq 6 ]
then 
	newjson="{ \"array\": [] }"
	echo $newjson > $json
fi













