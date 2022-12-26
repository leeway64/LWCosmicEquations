# If the number of command-line arguments does not equal 7, print help message
if [ "$#" -ne 7 ]; then
    echo "Incorrect number of arguments. 7 arguments are necessary for the Drake Equation:"
    
    echo "Drake Equation: "
    echo -e "include drake equation here"
    echo -e "\tN: "
    
    # The -e option allows for characters such as \t and \n to be interepreted
    echo -e "\tR*: "
    echo -e "\tfp: "
    echo -e "\tne: "
    echo -e "\tfl: "
    echo -e "\tfi: "
    echo -e "\tfc: "
    echo -e "\tL: "    

    echo -e "Refer to the Drake Equation's Wikipedia page for more information: https://en.wikipedia.org/wiki/Drake_equation#Equation"
    exit
fi


echo "print full drake equation here"
echo "N = $(($1 * $2 * $3 * $4 * $5 * $6 * $7))"
