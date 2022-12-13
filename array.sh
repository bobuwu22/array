# Declare a string array
arr=()


# Generate random index
index=$(shuf -i 0-5 -n 1)


# ECHO
echo arr=${arr[*]} index=$index
echo -e "\n"


while [ ${#arr[*]} -lt 6 ]
do
	until [[ ! " ${arr[*]} " =~ " $index " ]]  
	do	
		index=$(shuf -i 0-5 -n 1)
	done

	arr+=($index)
done


# ECHO
echo -e "\n"
echo arr=${arr[*]} index=$index

echo -e "\n"
echo ${arr[*]}  All of the items in the array
echo ${!arr[*]} All of the indexes in the array
echo ${#arr[*]} Number of items in the array




