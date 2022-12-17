json="/home/bob/bin/array/numbers.json"
arr=$(jq ".array[]" $json)
len=$(jq "[.array[] | select(.)] | length" numbers.json)
var=$(shuf -i 0-5 -n 1)
ocurrences=$(jq "[.array[] | select(. == $var)] | length" $json)


echo $arr
echo $len
echo $var
echo $ocurrences






newjson=$(jq ".array += [$var]" $json)

echo -e "\n"
echo newjson: $newjson
echo $newjson > $json
 


: '
echo $arr
echo $len
echo $var
echo $ocurrences'



: '
if [ $ocurrences -ne 0 ]
then
	echo $var is there $ocurrences times
else
	echo $var is not there
fi


if [ $len -lt 6 ]
then
        until [ $ocurrences -ne 0 ]
        do
                var=$(shuf -i 0-5 -n 1)
        done

        arr+=($index)
fi'














: '
#echo $arr


echo -e "\n"



echo ${arr[*]}  All of the items in the array
echo ${!arr[*]} All of the indexes in the array
echo ${#arr[*]} Number of items in the array
echo ${#arr[0]} Length of item zero
echo ${arr[0]} item zero
echo ${#arr[1]} Length of item one
echo ${arr[1]} item one
echo ${#arr[2]} Length of item two
echo ${arr[2]} item two'




