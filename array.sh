# Declare a string array
arr=()


# Add new elements at the end of the array
arr+=(1)
arr+=(2)
arr+=(3)


# Generate random index
index=$(shuf -i 0-5 -n 1)

echo arr=${arr[*]} index=$index
echo -e "\n"



until [[ ! " ${arr[*]} " =~ " $index " ]]  
do	
	
	echo index=$index
	index=$(shuf -i 0-5 -n 1)
done

arr+=($index)


echo -e "\n"
echo arr=${arr[*]} index=$index





: '
#echo -e "\n"
echo ${arr[*]}  All of the items in the array
echo ${!arr[*]} All of the indexes in the array
echo ${#arr[*]} Number of items in the array
echo ${#arr[0]} Length of item zero
echo ${arr[0]} item zero
echo ${#arr[1]} Length of item one
echo ${arr[1]} item one
echo ${#arr[2]} Length of item two
echo ${arr[2]} item two
echo -e "\n"
echo -e "\n"'







