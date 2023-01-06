function print_drake_eqn()
{
    echo "Drake Equation:"
    echo -e "\tN = R* * fp * ne * fl * fi * fc * L\n"
}


function drake_equation()
{
    # bc is Basic Calculator. Calculates math expressions.
    echo "$1 * $2 * $3 * $4 * $5 * $6 * $7" | bc -l
}
