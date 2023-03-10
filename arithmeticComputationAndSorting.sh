declare -A arithmaticOperation

# Taking input from user
echo "Enter first numbers: "
read a
echo "Enter second numbers: "
read b
echo "Enter third numbers: "
read c

# here com is computation
com1=$(echo $(( a + b * c )))
echo "Computation 1 result is "$com1

com2=$(echo $(( a * b + c )))
echo "Computation 2 result is: "$com2

com3=$(echo $(( c + a / b )))
echo "Computation 3 result is: "$com3

com4=$(echo $(( a % b + c )))
echo "Computation 4 result is: "$com4

#Storing result in dictionary
arithmaticOperation[result1]=$com1
arithmaticOperation[result2]=$com2
arithmaticOperation[result3]=$com3
arithmaticOperation[result4]=$com4
echo ${arithmaticOperation[*]}

#Storing dictionary result in array
for((i=0; i<=${#arithmaticOperation[@]}; i++))
do
  array[i]=${arithmaticOperation[result$((i+1))]}
done
echo "${array[@]}"

echo "Sorting computation result in Descending order"
sortedDescending=($(echo ${array[@]}| tr " " "\n" | sort -nr))
echo ${sortedDescending[@]}

echo "Sorting the result in Ascending order"
sortedAscending=($(echo ${array[@]}| tr " " "\n" | sort -n))
echo ${sortedAscending[@]}
