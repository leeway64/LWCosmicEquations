source lib/drake-equation.functions.sh


@test "Integer input" {
    result1=`drake_equation 0 0 0 0 0 0 0`
    [ "$result1" -eq 0 ]
    
    result2=`drake_equation 1 1 1 1 1 1 1`
    [ "$result2" -eq 1 ]
    
    result3=`drake_equation 2 4 6 8 10 12 16`
    [ "$result3" -eq 737280 ]
}


@test "Double input" {
    result1=`drake_equation 0.5 0.5 0.5 0.5 0.5 0.5 0.5`
    [ $(echo "$result1 == 0.0078125" | bc -l) -eq 1 ]
    
    result2=`drake_equation 100 0.8 0.3 0.3 0.3 0.3 789456.7`
    [ $(echo "$result2 == 511567.9416" | bc -l) -eq 1 ]

    result3=`drake_equation 200000 0.25 0.125 0.5 0.4 0.2 64`
    [ $(echo "$result3 == 16000" | bc -l) -eq 1 ]
}
