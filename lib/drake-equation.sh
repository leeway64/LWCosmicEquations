# If the number of command-line arguments does not equal 7, print help message
if [ "$#" -ne 7 ]; then
    echo "Incorrect number of arguments. 7 arguments are necessary for the Drake Equation:"
    
    echo "Drake Equation: "
    echo -e "include drake equation here"
    echo -e "\tN: "
    
    # The -e option allows for characters such as \t and \n to be interepreted
    echo -e "\tR*: Average rate of star formation"
    echo -e "\tfp: Fraction of those stars with planets"
    echo -e "\tne: Average number of planets that can support life for every star that has planets"
    echo -e "\tfl: Percentage of planets that actually develop life"
    echo -e "\tfi: Percentage of planets that actually develop civilizations"
    echo -e "\tfc: Fraction of civilizations that release detectable signals into space"
    echo -e "\tL: Length of time which civilizations release detectable signals into space"

    echo -e "Refer to the Drake Equation's Wikipedia page for more information: https://en.wikipedia.org/wiki/Drake_equation#Equation"
    exit
fi


echo "print full drake equation here"
echo "N = $(($1 * $2 * $3 * $4 * $5 * $6 * $7))"
