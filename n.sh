json="/home/bob/bin/array/numbers.json"
arr=$(jq ".array[]" $json)

echo $arr


var=$(shuf -i 0-5 -n 1)

echo $var

jq "[.array[] | select(. == $var)] | length" $json











: '
if [[ " ${arr[*]} " =~ " $var " ]]
then
	echo $var is there
else
	echo $var is not there
	#echo -n "$var " >> /home/bob/bin/array/numbers.txt
fi


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




