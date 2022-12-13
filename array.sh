# Declare a string array
arr=()


# Add new element at the end of the array
arr+=(1)
arr+=(2)
arr+=(3)


# Generate random index
index=$(shuf -i 0-10 -n 1)
arr+=($index)


numbers=()
number=$(shuf -i 0-5 -n 1)
numbers+=($number)


echo numbers=${numbers[*]} number=$number
echo -e "\n"


number=$(shuf -i 0-5 -n 1)

until [[ ! " ${numbers[*]} " =~ " $number " ]]  
do	
	
	echo number=$number
	number=$(shuf -i 0-5 -n 1)
done

numbers+=($number)


echo -e "\n"
echo numbers=${numbers[*]} number=$number




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







