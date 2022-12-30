# Taking input from user
echo "Enter first numbers: "
read a
echo "Enter second numbers: "
read b
echo "Enter third numbers: "
read c

com1=$(echo $(( a + b * c )))
echo "Computation 1 result is: "$com1
