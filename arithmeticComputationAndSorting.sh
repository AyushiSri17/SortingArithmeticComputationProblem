# Taking input from user
echo "Enter first numbers: "
read a
echo "Enter second numbers: "
read b
echo "Enter third numbers: "
read c

com=$(echo $(( c + a / b )))
echo "Computation result is: "$com
