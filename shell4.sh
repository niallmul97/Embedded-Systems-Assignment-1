#!/bin/bash
#! Write a shell script to take two numbers from command line
#! and show result of dividing small number with bigger number.
#! Also, you will need to check that the user has not entered a zero or
#! negative value for the divisor that may cause a divide by zero error.
echo 'Enter two numbers'
echo 'Enter the first number'
read NUM1
if [[ $NUM1 -lt 1 ]];
then
  echo 'error: Not a valid input' >&2; exit 1
fi
echo 'Enter the second number'
read NUM2
if [[ $NUM2 -lt 1 ]];
then
  echo 'error: Not a valid input' >&2; exit 1
fi
CALCULATION=0
if ! [[ $NUM1 =~ $re ]] ;
then
  echo 'error: Not a valid input' >&2; exit 1
elif ! [[ $NUM2 =~ $re ]] ;
then
  echo 'error: Not a valid input' >&2; exit 1
else
  if [[ $NUM1 -gt $NUM2 ]];
  then
    CALCULATION=$(( $NUM1 / $NUM2 ))
    echo 'Calculation = '$CALCULATION
  else
    CALCULATION=$(( $NUM2 / $NUM1 ))
    echo 'Calculation = '$CALCULATION
  fi
fi
