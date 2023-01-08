source lib/drake-equation.functions.sh


@test "Integer input" {
  result=`drake_equation 0 0 0 0 0 0 0`
  [ "$result" -eq 0 ]
}


@test "Double input" {
  result=`drake_equation 200000 0.25 0.125 0.5 0.4 0.2 64`
  echo $result
  [ $(echo "$result == 16000" | bc -l) -eq 1 ]
}
